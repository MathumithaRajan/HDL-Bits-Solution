module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [15:0] a_lower, a_upper, b_lower, b_upper, sum_l, sum_u,sum_u1, sum_u2;
    
    assign a_lower = a[15:0];
    assign a_upper = a[31:16];
    assign b_lower = b[15:0];
    assign b_upper = b[31:16];
    
    wire cout_l,cout_u1,cout_u2;
    add16 add1(a_lower, b_lower, 1'b0, sum_l, cout_l);
    add16 add2(a_upper, b_upper, 1'b0, sum_u1, cout_u1);
    add16 add3(a_upper, b_upper, 1'b1, sum_u2, cout_u2);
    
    assign sum_u = cout_l ? (sum_u2) : (sum_u1); 
    assign sum = {sum_u, sum_l}; 
  
endmodule
