module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
        
    wire [7:0] in1,in2;
    // assign intermediate_result1 = compare? true: false;
    assign in1 = (a<b) ? a : b;
    assign in2 = (in1<c) ? in1 : c;
    assign min = (in2<d) ? in2 : d;
    
endmodule
