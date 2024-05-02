`timescale 1ns / 1ps



module Simulation_FSM;
    logic inclk;
    logic [5:0]t_vector;
    logic [10:0]test_out;
   
    
    FSM_Top uut (.CLK100MHZ(inclk),.sw(t_vector),.led(test_out));
    
    
  initial
     begin
//     t_vector = 6'b000000;      
//     inclk = 1'b0;              
//     inclk = 1'b1;             
//     #1;    
//     t_vector = 6'b000000;                  
//     inclk = 1'b0;
//     inclk = 1'b1;
//     #1;
//     t_vector = 6'b000000;
//     inclk = 1'b0;
//     inclk = 1'b1;
//     #1;
//     t_vector = 6'b000000;
//     inclk = 1'b0;              
//     inclk = 1'b1;             
//     #1;
//     t_vector = 6'b000000;                        
//     inclk = 1'b0;
//     inclk = 1'b1;
//     #1;
//     t_vector = 6'b000000;
//     inclk = 1'b0;
//     inclk = 1'b1;
//     #1;
//     t_vector = 6'b000000;
//     inclk = 1'b0;
//     inclk = 1'b1;
//     #1;
//     t_vector = 6'b000000;
//     inclk = 1'b0;
//     inclk = 1'b1;
//     #1;
//     t_vector = 6'b000000;
//     inclk = 1'b0;
//     inclk = 1'b1;
//     #1; 
//     t_vector = 6'b000001;      
//     inclk = 1'b0;              
//     inclk = 1'b1;             
//     #1;   
//     inclk = 1'b0;              
//     inclk = 1'b1;             
//     #1;
//     inclk = 1'b0;              
//     inclk = 1'b1;             
//     #1;      
     
//     t_vector = 6'b000010;      // TA activo
//     inclk = 1'b0;
//     inclk = 1'b1;
//     #1;
//     t_vector = 6'b000010;      // TA activo
//     inclk = 1'b0;
//     inclk = 1'b1;
//     #1;
//     t_vector = 6'b000010;      // TA activo
//     inclk = 1'b0;
//     inclk = 1'b1;
//     #1;
     
     t_vector = 6'b000100;      // TB activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     t_vector = 6'b000100;      // TB activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     t_vector = 6'b000100;      // TB activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     t_vector = 6'b000100;      // TB activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     t_vector = 6'b000100;      // TB activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     

     t_vector = 6'b0001100;      // TB y E mergencia activoactivo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     t_vector = 6'b0001100;      // TB y E mergencia activoactivo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     t_vector = 6'b0001100;      // TB y E mergencia activoactivo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     
     t_vector = 6'b000100;      // TB activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     t_vector = 6'b000100;      // TB activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     t_vector = 6'b000100;      // TB activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     
     t_vector = 6'b010100;      // peaton boulevard activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     t_vector = 6'b010100;      // peaton boulevard activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     t_vector = 6'b010100;      // peaton boulevard activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     
     t_vector = 6'b000010;      // TA activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     t_vector = 6'b000010;      // TA activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     t_vector = 6'b000010;      // TA activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
         
     t_vector = 6'b100010;      // Peaton Av activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     t_vector = 6'b100010;      // Peaton Av activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;
     t_vector = 6'b100010;      // Peaton Av activo
     inclk = 1'b0;
     inclk = 1'b1;
     #1;  
     $stop;   
     end
endmodule
