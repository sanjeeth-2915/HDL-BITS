module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire x,y,a,b;
    assign x= p2a&p2b;
    assign y= p2c&p2d;
    assign p2y= x|y;
    assign a=(p1a&p1b&p1c);
    assign b=(p1d&p1e&p1f);
    assign p1y = a|b;
endmodule
