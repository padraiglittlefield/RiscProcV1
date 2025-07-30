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
    logic [255:0] wdata;
    logic [31:0] wmask;

    // Miss Repairs 
    logic read_miss_repair;
    logic write_miss_repair;
    logic [31:0] missed_addr;
    logic repair_resolved;

    modport Arbiter(
        input rdata, read_miss_repair, write_miss_repair, missed_addr, rdata_valid,
        output raddr_valid, raddr, waddr_valid, waddr, wdata, wmask, repair_resolved
    );

    modport Controller(
        input raddr_valid, raddr, waddr_valid, waddr, wdata, wmask, repair_resolved, 
        output rdata, read_miss_repair, write_miss_repair, missed_addr, rdata_valid
    );

endinterface

`endif