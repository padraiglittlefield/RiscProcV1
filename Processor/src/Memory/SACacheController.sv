module SACacheController #(
    parameter NUM_WAYS = 8;
)(

);

genvar i;
generate
    
    for(i = 0; i < NUM_WAYS; i++) begin : way // Generate a tag and data store SRAM for each way of the Set Associative Cache
        
        sram_0rw1r1w_128_128_freepdk45 data_store (

        );


        sram_0rw1r1w_19_128_freepdk45 tag_store (

        );

    end

endgenerate




endmodule