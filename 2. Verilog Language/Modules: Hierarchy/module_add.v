module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] a_lower, a_upper, b_lower, b_upper, sum_l, sum_u;
    
    assign a_lower = a[15:0];
    assign a_upper = a[31:16];
    assign b_lower = b[15:0];
    assign b_upper = b[31:16];
    
    wire cin, cout1, cout; 
    assign cin = 1'b0; 
    
    add16  add16_1 (a_lower, b_lower, cin, sum_l, cout1);
    add16  add16_2 (a_upper, b_upper, cout1, sum_u, cout);
        
    assign sum = {sum_u, sum_l};  // Corrected concatenation

endmodule
