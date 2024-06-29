`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/29/2024 05:41:13 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input wire logic[3:0] sw,
    input wire logic btnc, btnd, btnl, btnr, btnu,
    output     logic[3:0] led
);

always_comb begin
    if(sw[0] == 1 && sw[1] == 1) begin
        led[3:0] = btnc ? 4'b1001 : 4'b0110;
    end else begin
        led[3:0] = 4'b0000;
    end
end

endmodule
