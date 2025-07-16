  module CacheArbiter #()(
    input logic clk,
    input logic rst,
    input logic stall,


    // Will be wrapped in interfaces
    input logic address,
    input logic store_hit,  // Store Buffer will be checked in parallel so if we get a store buffer hit we will drop the second stage
    output logic miss_repair,
    

    /* TODO: Interfaces:
        1. MMU for getting the address (MMU will handle memory disambguity and such)
        2. Eviction Logic (Seperate logic controller for handling) 
    
    */
);


/*  TODO: I really need to abstract the arbiter and then in a seperate file, instantiate an arbiter for L1 (Inst and Data), 
        Victim Cache, and L2. Therefore, the arbiter needs be smaller in scope. Need to figure out how to remedy this

    Inputs:
        1. Address

    Outputs:
        1. Miss Repair

    TODO: Stores? Store Buffer. Different policy?
        - Probably need to have some connections with store buffer. Store buffer will tell arbiter when there's a hit and the arbiter will need to stall
            the store buffers when allocating new cache entries as the store buffer will otherwise write once a cycle.

    Operations:
        Requests: 
            Stage 1. Take in request memory address and register address on read index on both Tag and Data Store in parallel
            Stage 2. Compare the tag at the address to the tag from the inputed address
                    a. Hit -> We are done, return the data, update LRU
                    b. Miss -> Send stall back and request the memory address from the next arbiter (abstract away all levels of the hierarchy. Each
                        level thinks its getting request from the processor and is requesting memory from main memory)

*/

// TODO: Since its pipelined and could miss on the second stage, we need a way to save the results of the first stage in a reg.

        // Define that reg here

// Configurations of the cache
localparam c = 8;
localparam b = 7;
localparam s = 3;


logic [(32-s-b)-1:0] tag;
logic [(s-b)-1:0] index;
logic [(b)-1:0] offset;

// ==== Connect to SRAM here ====


// Data Store


// Tag Store


// ==============================



// Pipeline Register 1 

// Check Tag (or abandon because of hit) and 1. issue return data to MMU or 2. Miss-repair procedure, including requesting the address from a lower block


// Check eviction status from interface to get spot to write new block


// Update new entry in the cache


// NEW TODOS: (IGNORE ABOCE FOR NOW)
// TODO: Use the type of write, as well as block offset, to correctly set wmask and put the data in the right word by shifting (take from my sj code)
// TODO: Connect to Load Queue and Store Buffer
// TODO: Connect to MMU, L1 i/d-Cache, L2 Cache, and AXI-Master RAM Controller
// TODO: Determine a form of cache corhence for i/d-L1 Cache as well as how to handle if both try and request a miss repair at the same time 

endmodule