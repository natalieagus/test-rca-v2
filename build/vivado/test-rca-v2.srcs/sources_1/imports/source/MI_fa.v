/*
    This file was generated automatically by Alchitry Labs 2.0.11-PREVIEW.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/
module MI_fa (
    output reg P_s,
    output reg P_cout,
    input P_a,
    input P_b,
    input P_cin
  );
  
  
  
  
  always @* begin
    P_s = P_a ^ P_b ^ P_cin;
    P_cout = (P_a & P_b) + (P_a & P_cin) + (P_b & P_cin);
  end
  
endmodule