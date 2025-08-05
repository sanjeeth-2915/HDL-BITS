module top_module ( input clk, input d, output q );
    wire s,r;
    my_dff (.clk(clk),.d(d),.q(s));
    my_dff (.clk(clk),.d(s),.q(r));
    my_dff (.clk(clk),.d(r),.q(q));
endmodule
