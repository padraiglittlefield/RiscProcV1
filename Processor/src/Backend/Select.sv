import CORE_PKG::*;

module Select #(

)(
    input clk,
    input rst,
    output logic clear_en,
    output logic [(RS_ENTRIES)-1:0] clear_index,                
    WakeupSelectIF.Select wakeupSelect,
    DispatchSelectIF.Select dispatchSelect,
    SelectRegReadIF.Select selectRegRead
);

/*
    Selection Logic
        - Generate select vector, grab payload ram entry as well as read
*/

always_comb begin
    for (int i = 0; i < ; i++) begin    // Priority Encoder for granting request
        if (wakeupSelect.request_vector[i]) begin
            wakeupSelect.grant_index = i;
            wakeupSelect.grant_en = 1'b1;
            break;
        end
    end
end

assign clear_en = wakeupwakeupSelect.grant_en;
assign clear_index = wakeupSelect.grant_index;
Disp_uOP selected_payload;
assign selected_payload = payload_ram[wakeupSelect.grant_index];

/*
    "Payload" Ram
        - Holds the instruction data while its waiting to be scheduled
*/
reg Disp_uOP payload_ram [NUM_FUS-1:0];
always@(posedge clk) begin
    if(rst) begin
        for(int i = 0; i <= NUM_FUS; i++) begin
            payload_ram[dispatchSelect.payload_ram_index] <= '0;
        end
    end else begin
        if(dispatchSelect.disp_valid) begin
            payload_ram[dispatchSelect.payload_ram_index] <= dispatchSelect.disp_uop;
        end
    end
end


// TODO: Connect up everythong to Register Read

endmodule