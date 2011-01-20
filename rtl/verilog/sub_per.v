//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
// Design Name: Substitution & Permutation (in cascade) for Present Cipher   //
// Module Name: sub_per                                                      //
// Language:    Verilog                                                      //
// Date Created: 1389/10/26                                                  //
// Description:                                                              //
//                                                                           //
// Company:                                                                  //
// Engineer: Reza Ameli                                                      //
//                                                                           //
// Dependencies:                                                             //
//                                                                           //
// Revision:                                                                 //
//                                                                           //
// Additional Comments:                                                      //
//      Target Device:                                                       //
//      Simulation Tool: Active-HDL                                          //
//      Synthesis Tool:  ISE 12.2                                            //
//      Known Bugs:                                                          //
//                                                                           //
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

module sub_per(data_o,data_i); // this module cascades the substitution and permutation layers of the cipher and builds a 
                               // single entity containing both of them

//- Module IOs ----------------------------------------------------------------

output wire[63:0] data_o;
input  wire[63:0] data_i;              

//- Variables, Registers and Parameters ---------------------------------------

wire [63:0] s; // intermediate signal

//- Instantiations ------------------------------------------------------------

substitution sub_per_substitution(.data_o(s)   ,.data_i(data_i)); // input of the S-Box is data_i
permutation  sub_per_permutation (.data_o(data_o),.data_i(s)); // output os Permutation layer is data_o

//-----------------------------------------------------------------------------
endmodule
