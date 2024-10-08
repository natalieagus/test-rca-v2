/*
    This file was generated automatically by Alchitry Labs 2.0.11-PREVIEW.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/
/*
  Parameters:
      SIZE = {1000} : 8
*/
module MI_rca_5f5ffd4b (
    input [7:0] P_a,
    input [7:0] P_b,
    input P_cin,
    output reg P_cout,
    output reg [7:0] P_s
  );
  localparam P_SIZE = 4'h8;
  
  
  reg [2:0] i;
  
  wire [7:0] M_fa_s;
  wire [7:0] M_fa_cout;
  reg [7:0] M_fa_a;
  reg [7:0] M_fa_b;
  reg [7:0] M_fa_cin;
  MI_fa fa_0 (
    .P_s(M_fa_s[0]),
    .P_cout(M_fa_cout[0]),
    .P_a(M_fa_a[0]),
    .P_b(M_fa_b[0]),
    .P_cin(M_fa_cin[0])
  );
  MI_fa fa_1 (
    .P_s(M_fa_s[1]),
    .P_cout(M_fa_cout[1]),
    .P_a(M_fa_a[1]),
    .P_b(M_fa_b[1]),
    .P_cin(M_fa_cin[1])
  );
  MI_fa fa_2 (
    .P_s(M_fa_s[2]),
    .P_cout(M_fa_cout[2]),
    .P_a(M_fa_a[2]),
    .P_b(M_fa_b[2]),
    .P_cin(M_fa_cin[2])
  );
  MI_fa fa_3 (
    .P_s(M_fa_s[3]),
    .P_cout(M_fa_cout[3]),
    .P_a(M_fa_a[3]),
    .P_b(M_fa_b[3]),
    .P_cin(M_fa_cin[3])
  );
  MI_fa fa_4 (
    .P_s(M_fa_s[4]),
    .P_cout(M_fa_cout[4]),
    .P_a(M_fa_a[4]),
    .P_b(M_fa_b[4]),
    .P_cin(M_fa_cin[4])
  );
  MI_fa fa_5 (
    .P_s(M_fa_s[5]),
    .P_cout(M_fa_cout[5]),
    .P_a(M_fa_a[5]),
    .P_b(M_fa_b[5]),
    .P_cin(M_fa_cin[5])
  );
  MI_fa fa_6 (
    .P_s(M_fa_s[6]),
    .P_cout(M_fa_cout[6]),
    .P_a(M_fa_a[6]),
    .P_b(M_fa_b[6]),
    .P_cin(M_fa_cin[6])
  );
  MI_fa fa_7 (
    .P_s(M_fa_s[7]),
    .P_cout(M_fa_cout[7]),
    .P_a(M_fa_a[7]),
    .P_b(M_fa_b[7]),
    .P_cin(M_fa_cin[7])
  );
  
  always @* begin
    M_fa_a = P_a;
    M_fa_b = P_b;
    for (i = 0; i < (0) + (4'h8) * (1); i = i + (1)) begin
      if (i == 1'h0) begin
        M_fa_cin[(1'h0)] = P_cin;
      end else begin
        M_fa_cin[(i)] = M_fa_cout[(i - 1'h1)];
      end
    end
    P_cout = M_fa_cout[(5'h7)];
    P_s = M_fa_s;
  end
  
endmodule