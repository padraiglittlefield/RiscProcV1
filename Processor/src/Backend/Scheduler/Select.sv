import CORE_PKG::*


module Select #(

)(
    input clk,
    input rst,
    WakeupSelectIF.Select wakeupSelect,
    DispatchSelectIF.Select dispatchSelect,
    //SelectRegFielIF.Select regfileSelect,
    SelectRegReadIF.Select selectRegRead
);

/*
    Selection Logic
        - Generate select vector, grab payload ram entry as well as read
*/

logic selected_index;
always_comb begin
  selected_index = '0;
  for (int i = 0; i < ; i++) begin
    if (wakeupSelect.request_vector[i]) begin
      selected_index = i;
      break;
    end
  end
end



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

Disp_uOP selected_payload;
assign selected_payload = payload_ram[selected_index];


/*
    Broadcast Selected - Needs to globally effect all wakeups
*/


endmodule