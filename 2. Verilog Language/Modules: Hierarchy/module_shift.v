module top_module ( input clk, input d, output q );

    wire con1,con2; 
    my_dff d0(clk, d, con1);
    my_dff d1(clk, con1, con2);
    my_dff d2(clk, con2, q);
    
endmodule
