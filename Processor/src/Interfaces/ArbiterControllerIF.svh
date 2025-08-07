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
    logic write_miss_repair;
    logic [31:0] missed_addr;
    logic repair_resolved;
    logic sent_repair;

    modport Arbiter(
        input rdata, read_repair_request, write_miss_repair, missed_addr, rdata_valid,
        output raddr_valid, raddr, waddr_valid, waddr, wdata, wmask, repair_resolved, sent_repair
    );

    modport Controller(
        input raddr_valid, raddr, waddr_valid, waddr, wdata, wmask, repair_resolved, sent_repair,
        output rdata, read_repair_request, write_miss_repair, missed_addr, rdata_valid
    );

endinterface

`endif