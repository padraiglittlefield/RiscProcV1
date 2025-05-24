module register_rename(
    input clk,
    input rst,
    input stall,
    
    // pass through signals for later stages
    input decoded_instr_t decoded_dd,

    // RAT Read -- 3 alias reads (rd, rs1 ,rs2)
    output logic [($clog2(`NUM_AREGS) * 3)-1:0] areg,      
    input logic [($clog2(`NUM_PREGS) * 3)-1:0] preg_alias,

    // RAT Write
    output logic w_en,
    output logic [$clog2(`NUM_AREGS)-1:0] dst_areg,
    output logic [$clog2(`NUM_PREGS)-1:0] new_alias,


    // free PREG queue 
    input logic [$clog2(`NUM_PREGS)-1:0] free_preg,  // connected to preg_out
    input logic empty,
    output logic r_en,

    // bypassed signals for other renamers
    input [$clog2(`NUM_AREGS)-1:0] bypassed_dst_i,
    input [$clog2(`NUM_PREGS)-1:0] bypassed_alias_i,
    output [$clog2(`NUM_AREGS)-1:0] bypassed_dst_o,
    output [$clog2(`NUM_PREGS)-1:0] bypassed_alias_o,


    // pass through signals for later stages
    output decoded_rr_instr_t decoded_rr
);

logic [$clog2(`NUM_PREGS)-1:0] rr_rd;
logic [$clog2(`NUM_PREGS)-1:0] rr_rs1;
logic [$clog2(`NUM_PREGS)-1:0] rr_rs2; 

assign areg = {
    decoded_dd.rd,
    decoded_dd.rs1,
    decoded_dd.rs2
};

// return aliases for dst and src from the RAT
assign { rr_rd, rr_rs1, rr_rs2 } = preg_alias;

// for testing purposes 
logic [$clog2(`NUM_PREGS)-1:0] renamed_src1;
logic [$clog2(`NUM_PREGS)-1:0] renamed_src2;

//assign decoded_rr.rr_rd = decoded_dd.rd != bypassed_dst_i ? new_alias : bypassed_alias_i; 

assign decoded_rr.rr_rd = new_alias;
assign decoded_rr.prev_alias = decoded_dd.rd != bypassed_dst_i ? new_alias : bypassed_alias_i; 
assign decoded_rr.rr_rs1 = decoded_dd.rs1 != bypassed_dst_i ? rr_rs1 : bypassed_alias_i; 
assign decoded_rr.rr_rs2 = decoded_dd.rs2 != bypassed_dst_i ? rr_rs2 : bypassed_alias_i;

assign renamed_src1 = decoded_rr.rr_rs1;
assign renamed_src2 = decoded_rr.rr_rs2;

assign bypassed_dst_o = decoded_dd.rd;
assign bypassed_alias_o = new_alias;

assign r_en = ~stall;

assign w_en = (!empty & !stall) ? 1'b1 : 1'b0;
assign dst_areg = decoded_dd.rd;
assign new_alias = free_preg;


// passthrough signals for later stages
assign decoded_rr.decoded_op = decoded_dd.decoded_op;       
assign decoded_rr.instr_type = decoded_dd.instr_type;            
assign decoded_rr.instr_type_immediate = decoded_dd.instr_type_immediate;  
assign decoded_rr.imm_val = decoded_dd.imm_val;
assign decoded_rr.is_br = decoded_dd.is_br;   
assign decoded_rr.is_jmp = decoded_dd.is_jmp; 
assign decoded_rr.rd_mem = decoded_dd.rd_mem;  
assign decoded_rr.wr_mem = decoded_dd.wr_mem;  
assign decoded_rr.wr_reg = decoded_dd.wr_reg;



endmodule
