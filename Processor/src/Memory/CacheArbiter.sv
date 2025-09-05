  module CacheArbiter #()(
    input logic clk,
    input logic rst,
    input logic stall,


    // Will be wrapped in interfaces
    input logic address,
    input logic store_hit,  // Store Buffer will be checked in parallel so if we get a store buffer hit we will drop the second stage
    output logic miss_repair,
    ArbiterControllerIF.Arbiter l1_ctrl_if,
    ArbiterControllerIF.Arbiter l2_ctrl_if,

    /* IMPROVEMENTS
        - Need to find a better solution to memory disambugiation. Potentially Use a Memory Dependence Predictor (MDP). 
            Going to currently stick with in order memory operations 

    */

    /* TODO: Interfaces:
        1. MMU for getting the address (MMU will handle memory disambguity and such)
        2. Eviction Logic (Seperate logic controller for handling) 
    
    */
);

//TODO: Whose responsibility is it to shift over the value to match the mask?

// TODO: 2-Entry Victim Cache (Register Backed) with a flip-flop LRU policy ici
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


// NEW TODOS: (IGNORE ABOVE FOR NOW)
// TODO: Use the type of write, as well as block offset, to correctly set wmask and put the data in the right word by shifting (take from my sj code)
// TODO: Connect to Load Queue and Store Buffer
// TODO: Connect to MMU, L1 i/d-Cache, L2 Cache, and AXI-Master RAM Controller
// TODO: Determine a form of cache corhence for i/d-L1 Cache as well as how to handle if both try and request a miss repair at the same time 


typedef enum logic [2:0] {
    IDLE,
    READ_ACCESS,
    WRITE_ACCESS,
    READ_WRITE_ACCESS,
    MISS_REPAIR,
} l1_cache_state_t;

typedef enum logic [1:0] {
    READ_LOWER,
    WRITEBACK
} miss_repair_state_t;

typedef enum logic [2:0] {
    IDLE,
    DONE,
    READ_ACCESS,
    WRITE_ACCESS,
    MISS_REPAIR,
} l2_cache_state_t;

typedef enum logic [2:0] {
    IDLE,
    READ_ACCESS,
    WRITE_ACCESS
} mem_interface_state_t;


l1_cache_state_t next_l1_state;
l1_cache_state_t curr_l1_state;

miss_repair_state_t next_l1_repair_state;
miss_repair_state_t curr_l1_repair_state;

l2_cache_state_t next_l2_state;
l2_cache_state_t curr_l2_state;

// TODO: Make interface to connect to LSU to actually recieve addrs and such
// TODO: Replace comments within state transition with actual wires from interface connection


logic l1_same_address;
always always_comb begin : L1_State_Transition
    next_l1_state = curr_l1_state;
    next_l2_state = curr_l2_state;
    
    if(/* raddr == waddr */) begin 
        l1_same_address = 1'b1;
    end

    case(curr_l1_state) 
        IDLE, READ_ACCESS, WRITE_ACCESS, READ_WRITE_ACCESS: begin

            if(/* read miss or write miss */) begin
                next_l1_state = READ_MISS_REPAIR; //TODO: Determine if we need both read and write miss repair
            end else if (/*write miss*/) begin
                next_l1_state = WRITE_MISS_REPAIR;
            end if (/*raddr and waddr valid */) begin
                next_l1_state = READ_WRITE_ACCESS;
            end else if(/*raddr valid but not waddr*/) begin
                next_l1_state = READ_ACCESS;
            end else if(/* waddr valid but not raddr */) begin 
                next_l1_state = WRITE_ACCESS;
            end else begin
                next_l1_state = IDLE;
            end
        end
        MISS_REPAIR: begin
            /*  1. Send read request to L2. 
                2. Upon recieving request: 
                    a. if miss was caused by invalid block, ignore
                    b. if miss was caused by tag mismatch, read old block, check for dirty bit, write to L2 if dirty
                3. Overwrite old block with new one and return
            */
            next_l1_repair_state = IDLE;
            case(curr_l1_repair_state)
                IDLE: begin
                    
                end
                READ_LOWER: begin
                
                end 
                OVERWRITE_BLOCK: begin

                end
                WRITEBACK: begin

                end
            endcase
        end
           
        default: begin
        end
    endcase


end

//TODO: Copy logic from L1 State to create L2 state. Only difference is that we will write to Memory Interface. (Consider how write through would affect it?)


// typedef enum logic [2:0] { 
//     IDLE,
//     L1,
//     L2,
//     MEM
// } arbiter_state_t;


// case(curr_l1_state) 
//     IDLE: begin
//     end
//     READ_ACCESS: begin  
//     end
//     WRITE_ACCESS: begin
//     end
//     READ_WRITE_ACCESS: begin
//     end
//     MISS_REPAIR: begin
//     end
//     default: begin
//     end
// endcase


// case(curr_l2_state) 
//     IDLE: begin
//         next_l1_state = MISS_REPAIR;
//         next_l2_state = READ_ACCESS;
//     end
//     READ_ACCESS: begin
//         if(/*Read/Write Miss from L2*/) begin
//             next_l1_state = MISS_REPAIR;
//             next_l2_state = MISS_REPAIR;
//         end else if(/*valid out from L2*/) begin
//             next_l1_state = MISS_REPAIR;
//             next_l2_state = RESOLVED;
//         end else begin // Still waiting for block for L2
//             next_l1_state = MISS_REPAIR;
//             next_l2_state = READ_ACCESS;
//         end
//     end
//     RESOLVED: begin
//         // Read evicted block from L1, prepare to write back to L2
//         next_l1_state = MISS_REPAIR;
//         next_l2 = WRITE_ACCESS;
//     end
//     WRITE_ACCESS: begin
//         if(/*Read/Write Miss from L2*/) begin
//             next_l1_state = MISS_REPAIR;
//             next_l2_state = MISS_REPAIR;
//         end else if(/*valid out from L2*/) begin
//             next_l1_state = MISS_REPAIR;
//             next_l2_state = RESOLVED;
//         end else begin // Still waiting for block for L2
//             next_l1_state = MISS_REPAIR;
//             next_l2_state = READ_ACCESS;
//         end
//     end
//     MISS_REPAIR: begin

//     end

// endcase


endmodule