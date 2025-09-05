`ifndef ARB_CTRL_IF
`define ARB_CTRL_IF
import CORE_PKG::*;
interface ArbiterControllerIF;

    // Read Requests
    logic raddr_valid;
    logic [31:0] raddr;
    logic [31:0] rdata;
    logic rdata_valid;
    
    // Write Requests
    logic waddr_valid;
    logic [31:0] waddr;
    logic [1023:0] wdata;
    logic [127:0] wmask;

    // Miss Repairs 
    logic read_repair_request;
    logic write_repair_request;
    logic read_repair_req_acq;
    logic write_repair_req_acq;
    logic [31:0] missed_addr;
    // logic [31:0] missed_waddr;
    logic repair_resolved;
    logic sent_repair;

    modport Arbiter(
        input rdata, read_repair_request, write_repair_request, missed_addr, rdata_valid,
        output raddr_valid, raddr, waddr_valid, waddr, wdata, wmask, repair_resolved, sent_repair,read_repair_req_acq,write_repair_req_acq
    );

    modport Controller(
        input raddr_valid, raddr, waddr_valid, waddr, wdata, wmask, repair_resolved, sent_repair,read_repair_req_acq,write_repair_req_acq,
        output rdata, read_repair_request, write_repair_request, missed_addr, rdata_valid
    );

endinterface

`endif