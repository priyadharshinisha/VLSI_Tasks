module sync_1ff (
    input  wire clk,
    input  wire rst_n,
    input  wire async_in,
    output reg  sync_out
);

always @(posedge clk or negedge rst_n)
begin
    if (!rst_n)
        sync_out <= 1'b0;
    else
        sync_out <= async_in;
end

endmodule
