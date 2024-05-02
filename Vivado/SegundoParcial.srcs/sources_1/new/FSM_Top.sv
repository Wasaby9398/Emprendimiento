`timescale 1ns / 1ps


module FSM_Top(input  logic CLK100MHZ,
               input  logic [5:0]sw,
               output logic [10:0]led
                );
    
    logic internal_psc_clock;
    logic int_reset = 1'b0;

clck_psc fsmclock (.my_clk(CLK100MHZ), .my_output(internal_psc_clock));

FSM_Semaforo semaforo (.clk(internal_psc_clock), .reset(sw[0]), .TA(sw[1]), .TB(sw[2]),
                        .E(sw[3]), .PeatonB(sw[4]), .PeatonAv(sw[5]),
                        .LARojo(led[0]), .LAAmarillo(led[1]), .LAVerde(led[2]), .LBRojo(led[5]), .LBAmarillo(led[6]),
                        .LBVerde(led[7]), .PeatonAvRojo(led[3]), .PeatonAvVerde(led[4]), .PeatonBRojo(led[8]), .PeatonBVerde(led[9])
                        );
assign led[10] = internal_psc_clock;
endmodule 