#!/usr/bin/env python3
from migen import *
from migen.fhdl import verilog

import random

WIDTH = 16 # How many bits can be in key and value
DEPTH = 16 # How many bits for the storage location
MAX_CAPACITY = 2**DEPTH # Capacity of key_value store
CAPACITY = 4

class key_value(Module):
    def __init__(self, width, depth):

        #inputs:
        self.KEY_i = KEY_i = Signal(width)
        self.VALUE_i_o = VALUE_i_o = Signal(width)
        self.RESET_i = RESET_i = Signal() #active for returing back to the retset state
        self.ADR_i = ADR_i = Signal(depth)
        self.DAT_i = DAT_i = Signal(width)
        self.WE_i = WE_i = Signal() #write enable
        self.STB_i = STB_i = Signal() #active to indicate bus transaction request
        self.CYC_i = CYC_i  = Signal() #wishbone transaction, true on (or before) the first i_wb_stb clock, stays true until the last o_wb_ack

        #outputs
        self.STALL_o = STALL_o = Signal() # false when the transaction happens
        self.ACK_o = ACK_o = Signal() #active for indicating the end of the transaction
        self.DAT_o = DAT_o = Signal(width)

        #imported_modules
        fsm = FSM(reset_state="RESET")
        self.submodules += fsm

        # storage = Memory(width, depth)
        # self.specials += storage

        self.storak = Array(Signal(width) for i in range(CAPACITY))
        self.storav = Array(Signal(width) for i in range(CAPACITY))
            
        self.ios = { KEY_i, VALUE_i_o, RESET_i, ADR_i, DAT_i, WE_i, STB_i, CYC_i,
                     STALL_o, ACK_o, DAT_o } 
        ###

        #internal signals
        # write_port = storage.get_port(write_capable = True)
        # read_port = storage.get_port(has_re=True)
        self.empty_location = Signal(depth,reset=1)
        
        ###

        self.comb += [
            # write_port.adr.eq(ADR_i),
            # read_port.adr.eq(ADR_i),
            # write_port.dat_w.eq(DAT_i),
            # DAT_o.eq(write_port.dat_r)
        ]

        fsm.act("INACTIVE",
            STALL_o.eq(1),
            NextValue(ACK_o,0),
            If((STB_i == 1) ,
                NextState("READING")
            ),
            If((STB_i == 1) & (WE_i == 1),
               NextState("WRITING"),
               If(ADR_i==0,
                   NextValue(self.empty_location, self.empty_location+1),
                ),
            )
        )

        fsm.act("READING",
                NextValue(DAT_o,self.storav[ADR_i]),
                NextValue(STALL_o,0),
                # NextValue(read_port.re,1),

            If((RESET_i == 1),
                NextState("RESET")
            ),
            If((CYC_i == 0),
               # NextValue(read_port.re,0),
                NextValue(ACK_o,1),
                NextState("INACTIVE"),
            )
        )
        
        #adress = 00 , dat = 000 , key = 0000 , value = 00000
        fsm.act("WRITING",
                If(ADR_i==0,
                   NextValue(self.storav[self.empty_location],DAT_i),
                   NextValue(self.storak[self.empty_location],KEY_i),
                   NextValue(self.empty_location, self.empty_location+1),
                   NextValue(self.DAT_o,self.empty_location),
                ).Else(
                    NextValue(self.storav[ADR_i],DAT_i),
                    NextValue(self.storak[ADR_i],KEY_i),
                    NextValue(self.DAT_o,ADR_i),
                ),
                NextValue(ACK_o,1),
                NextState("INACTIVE"),
                If((RESET_i == 1),
                   NextState("RESET")
                ).Else(
                    NextState("INACTIVE"),
                )
        )
        fsm.act("RESET",
                NextState("INACTIVE")
        )

def tick():
    global t
    t=t+1
    yield

# utility test functions

def store_key_value(dut,key,value):
    # do whatever is necessary to store key/value
    yield dut.DAT_i.eq(value)
    yield dut.KEY_i.eq(key)
    yield dut.ADR_i.eq(0)
    yield dut.CYC_i.eq(1)
    yield dut.WE_i.eq(1)
    yield dut.STB_i.eq(1)
    yield
    yield dut.WE_i.eq(0)
    yield dut.STB_i.eq(0)
    # FIXME why is there so many yields? ---- fixed

    yield from tick()

    yield dut.CYC_i.eq(0)
    yield from tick()

    MAX_WAIT_CYCLES=50
#    for i in range(MAX_WAIT_CYCLES):
#        if ((yield dut.STALL_o) ==1):
#            # ok, we got the data
#            break
#        else:
#            # otherwise, wait another clock cycle
#            yield from tick()##
#
#    if i==(MAX_WAIT_CYCLES-1):
#        raise Exception("Timeout waiting to get data")

    # if (yield dut.error_signal)   # FIXME: what is the signal
    #     raise Error("Capacity is full")

    stored_location = (yield dut.DAT_o)
    # FIXME: how to get which location it is stored in ---- location is the adresse printing the coressponding adress to the key ___ done
    return stored_location

def recall_from_key(dut,key):

    yield dut.CYC_i.eq(1)
    yield dut.STB_i.eq(1)
    yield dut.KEY_i.eq(KEY)
    yield
    yield dut.STB_i.eq(0)
    yield from tick()
    yield dut.CYC_i.eq(0)
    yield from tick()

    MAX_WAIT_CYCLES=50
    for i in range(MAX_WAIT_CYCLES):
        if ((yield dut.STALL_o) ==1):
            # ok, we got the data
            break
        else:
            # otherwise, wait another clock cycle
            yield from tick()

    if i==(MAX_WAIT_CYCLES-1):
        raise Exception("Timeout waiting to get data")

    # finally return the data that we recalled
    return (yield dut.DAT_o)

def recall_from_location(dut,location):
    # do whatever is necessary to recall the value
    yield dut.CYC_i.eq(1)
    yield dut.STB_i.eq(1)
    yield dut.ADR_i.eq(location)
    yield
    yield dut.STB_i.eq(0)
    yield from tick()
    yield dut.CYC_i.eq(0)
    yield from tick()

    MAX_WAIT_CYCLES=50
    for i in range(MAX_WAIT_CYCLES):
        if ((yield dut.STALL_o) ==1):
            # ok, we got the data
            break
        else:
            # otherwise, wait another clock cycle
            yield from tick()

    if i==(MAX_WAIT_CYCLES-1):
        raise Exception("Timeout waiting to get data")

    # finally return the data that we recalled
    return (yield dut.DAT_o)

def simulation_story(dut):

    global t
    t = 0
    # if it needs it, here is some empty startup time
    for i in range(5):
        yield from tick()

    capacity = CAPACITY
    stored_keys_values = {}
    stored_locations = {}

    # Tests for issue #115

    key=1111
    value=11111
    stored_location = yield from store_key_value(dut,key,value)
    stored_locations[key] = stored_location
    print(f"Stored {value} for key {key} in location {stored_location}, recall says:")
    print((yield from recall_from_location(dut,stored_location)))
    assert (value == (yield from recall_from_location(dut,stored_location)))
    capacity = capacity-1

    key=2222
    value=22222
    stored_location = yield from store_key_value(dut,key,value)
    stored_locations[key] = stored_location
    assert (value == (yield from recall_from_location(dut,stored_location)))
    capacity = capacity-1

    key=3334
    value=33334
    stored_location = yield from store_key_value(dut,key,value)
    stored_locations[key] = stored_location
    assert (value == (yield from recall_from_location(dut,stored_location)))
    capacity = capacity-1

    # Test to see if we can write a new value for a key
    key=1111
    value=10101
    stored_location = yield from store_key_value(dut,key,value)
    stored_locations[key] = stored_location
    assert (value == (yield from recall_from_location(dut,stored_location)))

    # TODO: check whether storing a new value in the same key,___ done

    key=1111
    value=10010
    stored_location = yield from store_key_value(dut,key,value)
    stored_locations[key] = stored_location
    assert (value == (yield from recall_from_location(dut,stored_location)))

    # uses a new location

    # Lets fill some random key values, and check them by location
    for j in range(int(capacity/2)-1):

    # Tests for issue #1width __ ????


    # Lets store values with random keys, until half capacity
        # generate a random key and make sure we havent already used it
        while key in stored_keys_values:
            key = random.getrandbits(WIDTH)

        random_value = random.getrandbits(WIDTH)
        stored_location = yield from store_key_value(dut,key,random_value)
        stored_locations[key] = stored_location
        stored_keys_values[key] = random_value
        capacity = capacity - 1

    # Now lets recall all the values by the location and see
    # if it returns the correct numbers

    for (check_key,check_location) in sorted(stored_locations.items()):
        check_value = stored_keys_values[key]
        got_value = (yield from recall_from_location(dut,check_location))
        print(f"Checking {check_key} is it in location {check_location}, {check_value} versus {got_value}")
        assert (check_value == (yield from recall_from_location(dut,check_location)))


    capacity = capacity - 3 # becaus we already used 3 locations in test above

    key = 1111
    for j in range(capacity):

        # generate a random key and make sure we havent already used it
        while key in stored_keys_values:
            key = random.getrandbits(width)

        random_value = random.getrandbits(width)
        yield from store_key_value(dut,key,random_value)
        stored_keys_values[key] = random_value

    # Now lets recall all the values by the keys and see
    # if it returns the correct numbers

    for (check_key,check_value) in sorted(stored_keys_values.items()):
        print(f"Checking {check_key} does it have {check_value}")
        assert (check_value == (yield from recall_from_key(dut,check_key)))


    # TODO: write test to make sure an error is returned

    random_value = random.getrandbits(width)
    try:
        stored_location = yield from store_key_value(dut,key,random_value)
        raise("The store operation did not give exception, but we expected an error")
    except Error as the_error:
        print("Ok, got an error as expected")

if __name__ == "__main__":
    dut = key_value(width=WIDTH, depth=DEPTH)
    # run_simulation(dut, simulation_story(dut), vcd_name="test_memory_wb.vcd")
    print(verilog.convert(dut, ios=dut.ios, name="keyvalue", create_clock_domains=True))
