/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder_97 (
    input [2:0] in,
    output reg [-1:0] sum,
    output reg [-1:0] carry
  );
  
  
  
  always @* begin
    sum = (in[0+0-:1] ^ in[1+0-:1]) ^ in[2+0-:1];
    carry = (in[0+0-:1] & in[1+0-:1]) | ((in[0+0-:1] ^ in[1+0-:1]) & in[2+0-:1]);
  end
endmodule