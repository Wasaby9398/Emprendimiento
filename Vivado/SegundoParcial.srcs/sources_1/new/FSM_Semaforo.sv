`timescale 1ns / 1ps

module FSM_Semaforo(
        input  logic clk,
        input  logic reset,
        input  logic TA, TB, E, PeatonB, PeatonAv,
        output logic LARojo, LAAmarillo, LAVerde, LBRojo, LBAmarillo, LBVerde, PeatonAvRojo, PeatonAvVerde, PeatonBRojo, PeatonBVerde
    );
    
  typedef enum logic [2:0]{S0,S1,S2,S3} statetype;
  statetype state, nextstate;
  
  logic LARojo1, LAAmarillo1, LAVerde1, LBRojo1, LBAmarillo1, LBVerde1, PeatonAvRojo1, PeatonAvVerde1, PeatonBRojo1, PeatonBVerde1;
  
  always_ff @(posedge clk, posedge reset)
  if (reset) state <= S0;
  else state <= nextstate;
  
  always_comb 
      case (state)
          S0: if((TA)&&(!PeatonAv)) nextstate = S0;
          else if((!TA)&&(!PeatonAv)) nextstate = S1;
          else if(PeatonAv) nextstate = S1;
          S1: if(!E) nextstate = S2;
          else if(E) nextstate = S0;
          S2: if((TB)&&(!E)&&(!PeatonB)) nextstate = S2;
          else if((E)) nextstate = S0;
          else if((!TB)&&(!E)&&(!PeatonB)) nextstate = S3;
          else if((!E)&&(PeatonB)) nextstate = S3;
          S3: nextstate = S0;
          default: nextstate = S0;
  endcase   

  always_comb 
      case (state)
          S0: begin
           {LARojo1, LAAmarillo1, LAVerde1, LBRojo1, LBAmarillo1, LBVerde1, PeatonAvRojo1, PeatonAvVerde1, PeatonBRojo1, PeatonBVerde1} = 10'b0011001001;
            end
          S1: begin
           {LARojo1, LAAmarillo1, LAVerde1, LBRojo1, LBAmarillo1, LBVerde1, PeatonAvRojo1, PeatonAvVerde1, PeatonBRojo1, PeatonBVerde1} = 10'b0101001010;
            end 
          S2: begin
           {LARojo1, LAAmarillo1, LAVerde1, LBRojo1, LBAmarillo1, LBVerde1, PeatonAvRojo1, PeatonAvVerde1, PeatonBRojo1, PeatonBVerde1} = 10'b1000010110;
            end 
          S3: begin
           {LARojo1, LAAmarillo1, LAVerde1, LBRojo1, LBAmarillo1, LBVerde1, PeatonAvRojo1, PeatonAvVerde1, PeatonBRojo1, PeatonBVerde1} = 10'b1000101010;
            end 
          default: ;
      endcase
      
  assign LARojo = LARojo1;
  assign LAAmarillo = LAAmarillo1; 
  assign LAVerde = LAVerde1;
  assign LBRojo = LBRojo1;
  assign LBAmarillo = LBAmarillo1;
  assign LBVerde = LBVerde1;
  assign PeatonAvRojo = PeatonAvRojo1;
  assign PeatonAvVerde = PeatonAvVerde1;
  assign PeatonBRojo = PeatonBRojo1;
  assign PeatonBVerde = PeatonBVerde1;
  
  endmodule
