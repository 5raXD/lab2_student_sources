`timescale 1ns/10ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         Tel Aviv University
// Engineer:        
// 
// Create Date:     11/12/2018 08:59:38 PM
// Design Name:     EE3 lab1
// Module Name:     Counter
// Project Name:    Electrical Lab 3, FPGA Experiment #1
// Target Devices:  Xilinx BASYS3 Board, FPGA model XC7A35T-lcpg236C
// Tool versions:   Vivado 2016.4
// Description:     A counter that advances its reading as long as time_reading 
//                  signal is high and zeroes its reading upon init_regs=1 input.
//                  the time_reading output represents: 
//                  {dekaseconds,seconds:deciseconds,centiseconds}
// Dependencies:    Lim_Inc
//
// Revision:        2.0
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Counter(clk, init_regs, count_enabled, count_sample, show_sample, time_reading);

   parameter CLK_FREQ = 100000000;// in Hz
   
   input clk, init_regs, count_enabled, count_sample, show_sample;
   output [15:0] time_reading;

   reg [$clog2(CLK_FREQ/100)-1:0] clk_cnt;
   reg [3:0] ones_centiseconds;
   reg [3:0] tens_centiseconds;
   reg [3:0] ones_seconds;    
   reg [3:0] tens_seconds;      
   
   // FILL HERE THE LIMITED-COUNTER INSTANCES
   
   //------------- Synchronous ----------------
   always @(posedge clk)
     begin
		// FILL HERE THE ADVANCING OF THE REGISTERS AS A FUNCTION OF init_regs, count_enabled
     end

endmodule
