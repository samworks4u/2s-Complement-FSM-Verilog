`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////

module tb_synth;

    reg clk;
    reg rst;
    reg incode;
    wire outcode;
    

    twos_comp dut (
        .clk(clk),
        .rst(rst),
        .incode(incode),
        .outcode(outcode)
    );

   

    initial begin
        clk = 1;
        forever #100 clk = ~clk;
       
    end
     initial begin
        $display("Time\t\tReset\tA\tY");
        $monitor("%t\t%b\t%b\t%b", $time, rst, incode, outcode);
    end

    initial begin
       rst = 1; incode=0; #190;
 
        rst = 0;
        incode = 0; #200
        incode = 1; #200
        incode = 1; #200
        incode = 0; #200
        incode = 1; #200
#10;
        $finish;
    end


endmodule