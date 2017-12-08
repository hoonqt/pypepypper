/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder8_79 (
    input [7:0] a,
    input [7:0] b,
    input [5:0] alufn,
    output reg [7:0] s,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  wire [0-1:0] M_adder0_sum;
  wire [0-1:0] M_adder0_carry;
  reg [3-1:0] M_adder0_in;
  adder_83 adder0 (
    .in(M_adder0_in),
    .sum(M_adder0_sum),
    .carry(M_adder0_carry)
  );
  
  wire [0-1:0] M_adder1_sum;
  wire [0-1:0] M_adder1_carry;
  reg [3-1:0] M_adder1_in;
  adder_83 adder1 (
    .in(M_adder1_in),
    .sum(M_adder1_sum),
    .carry(M_adder1_carry)
  );
  
  wire [0-1:0] M_adder2_sum;
  wire [0-1:0] M_adder2_carry;
  reg [3-1:0] M_adder2_in;
  adder_83 adder2 (
    .in(M_adder2_in),
    .sum(M_adder2_sum),
    .carry(M_adder2_carry)
  );
  
  wire [0-1:0] M_adder3_sum;
  wire [0-1:0] M_adder3_carry;
  reg [3-1:0] M_adder3_in;
  adder_83 adder3 (
    .in(M_adder3_in),
    .sum(M_adder3_sum),
    .carry(M_adder3_carry)
  );
  
  wire [0-1:0] M_adder4_sum;
  wire [0-1:0] M_adder4_carry;
  reg [3-1:0] M_adder4_in;
  adder_83 adder4 (
    .in(M_adder4_in),
    .sum(M_adder4_sum),
    .carry(M_adder4_carry)
  );
  
  wire [0-1:0] M_adder5_sum;
  wire [0-1:0] M_adder5_carry;
  reg [3-1:0] M_adder5_in;
  adder_83 adder5 (
    .in(M_adder5_in),
    .sum(M_adder5_sum),
    .carry(M_adder5_carry)
  );
  
  wire [0-1:0] M_adder6_sum;
  wire [0-1:0] M_adder6_carry;
  reg [3-1:0] M_adder6_in;
  adder_83 adder6 (
    .in(M_adder6_in),
    .sum(M_adder6_sum),
    .carry(M_adder6_carry)
  );
  
  wire [0-1:0] M_adder7_sum;
  wire [0-1:0] M_adder7_carry;
  reg [3-1:0] M_adder7_in;
  adder_83 adder7 (
    .in(M_adder7_in),
    .sum(M_adder7_sum),
    .carry(M_adder7_carry)
  );
  
  always @* begin
    M_adder0_in[0+0-:1] = a[0+0-:1];
    M_adder1_in[0+0-:1] = a[1+0-:1];
    M_adder2_in[0+0-:1] = a[2+0-:1];
    M_adder3_in[0+0-:1] = a[3+0-:1];
    M_adder4_in[0+0-:1] = a[4+0-:1];
    M_adder5_in[0+0-:1] = a[5+0-:1];
    M_adder6_in[0+0-:1] = a[6+0-:1];
    M_adder7_in[0+0-:1] = a[7+0-:1];
    M_adder0_in[1+0-:1] = b[0+0-:1] ^ alufn[0+0-:1];
    M_adder1_in[1+0-:1] = b[1+0-:1] ^ alufn[0+0-:1];
    M_adder2_in[1+0-:1] = b[2+0-:1] ^ alufn[0+0-:1];
    M_adder3_in[1+0-:1] = b[3+0-:1] ^ alufn[0+0-:1];
    M_adder4_in[1+0-:1] = b[4+0-:1] ^ alufn[0+0-:1];
    M_adder5_in[1+0-:1] = b[5+0-:1] ^ alufn[0+0-:1];
    M_adder6_in[1+0-:1] = b[6+0-:1] ^ alufn[0+0-:1];
    M_adder7_in[1+0-:1] = b[7+0-:1] ^ alufn[0+0-:1];
    M_adder0_in[2+0-:1] = alufn[0+0-:1];
    M_adder1_in[2+0-:1] = M_adder0_carry;
    M_adder2_in[2+0-:1] = M_adder1_carry;
    M_adder3_in[2+0-:1] = M_adder2_carry;
    M_adder4_in[2+0-:1] = M_adder3_carry;
    M_adder5_in[2+0-:1] = M_adder4_carry;
    M_adder6_in[2+0-:1] = M_adder5_carry;
    M_adder7_in[2+0-:1] = M_adder6_carry;
    z = ~(M_adder0_sum | M_adder1_sum | M_adder2_sum | M_adder3_sum | M_adder4_sum | M_adder5_sum | M_adder6_sum | M_adder7_sum);
    v = (a[7+0-:1] & (b[7+0-:1] ^ alufn[0+0-:1]) & ~M_adder7_sum) | (~a[7+0-:1] & ~(b[7+0-:1] ^ alufn[0+0-:1]) & M_adder7_sum);
    n = M_adder7_sum;
    s = 1'h0;
    
    case (alufn[0+1-:2])
      2'h0: begin
        s[0+0-:1] = M_adder0_sum;
        s[1+0-:1] = M_adder1_sum;
        s[2+0-:1] = M_adder2_sum;
        s[3+0-:1] = M_adder3_sum;
        s[4+0-:1] = M_adder4_sum;
        s[5+0-:1] = M_adder5_sum;
        s[6+0-:1] = M_adder6_sum;
        s[7+0-:1] = M_adder7_sum;
      end
      2'h1: begin
        s[0+0-:1] = M_adder0_sum;
        s[1+0-:1] = M_adder1_sum;
        s[2+0-:1] = M_adder2_sum;
        s[3+0-:1] = M_adder3_sum;
        s[4+0-:1] = M_adder4_sum;
        s[5+0-:1] = M_adder5_sum;
        s[6+0-:1] = M_adder6_sum;
        s[7+0-:1] = M_adder7_sum;
      end
      2'h2: begin
        s = a * b;
      end
      2'h3: begin
        s = a - (a / b) * b;
      end
    endcase
  end
endmodule
