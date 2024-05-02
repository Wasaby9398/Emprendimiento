`timescale 1ns / 1ps


module clck_psc(input logic my_clk,
                output logic my_output);
    
     logic [31:0]myreg;
     
     always @(posedge my_clk)
         myreg +=1;
     
     assign my_output = myreg[28];

endmodule