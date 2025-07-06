`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2025 22:02:19
// Design Name: 
// Module Name: twos_comp
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


module twos_comp (
    input clk,
    input rst, 
    input incode,
    output reg outcode
);

    // Define states
    localparam Copy   = 1'b0;
    localparam Invert = 1'b1;

    reg state;

    always @(posedge clk or posedge rst) begin
        if (rst==1) begin
          
            outcode <= 1'b0;
            state<=Copy;
            
        end else begin
            case (state)
               Copy: begin
                    outcode <= incode;
                    if (incode == 1)
                        state <= Invert;
                end
                Invert: begin
                    outcode <= ~incode;
                
                end
                default: state<=Copy;
            endcase
        end
    end
endmodule



