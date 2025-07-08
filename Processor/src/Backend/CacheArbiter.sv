module CacheArbiter #()(
    //
);

/* Stupidly Simple Cache Arbiter
    Improvements:
        1. Victim Cache and L2 Cache 
        2. AXI RAM Controller
        3. Non-blocking cache
            - Miss Status Handling Register
        4. Virtual Memory, TLB, VIPT
            - Required for enabling linux


*/

/*  TODO: I really need to abstract the arbiter and then in a seperate file, instantiate an arbiter for L1 (Inst and Data), 
        Victim Cache, and L2. Therefore, the arbiter needs be smaller in scope. Need to figure out how to remedy this


    1. Instantiate and back up L1, L2, and Victim Cache Tag and Data store
    2. Create FSM:
        L1/Victim Cache (Do both in parallel)
            State 1: Begin read and Register Addresses on L1
            State 2: Perform Tag Check -> Hit, we done. Miss, Continue
            State 3-12: Begin Read and Register




*/



/* +++++ L1 Cache +++++ 
        1. Config
                c:
                b:
                s:

*/


/* +++++ Victim Cache +++++ 
        1. Config
                c:
                b:
                s:
        2. Tag is Checked in parall with L1 Cache

*/


/* +++++ L2 Cache +++++ 
        1. Config
                c:
                b:
                s:

*/



endmodule