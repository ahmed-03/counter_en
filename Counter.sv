`timescale 1ns / 1ps

module Counter #(
    parameter bits = 4
) (
    clk,
    rst_n,
    en,
    q
);
  input clk, rst_n, en;
  output logic [bits-1:0] q;

  always @(posedge clk, negedge rst_n) begin

      if (~rst_n) q <= '0;
    else if(en) begin
           q <= q + 1;
    end
  end


endmodule