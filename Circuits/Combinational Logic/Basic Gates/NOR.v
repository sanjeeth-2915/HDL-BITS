module top_module (
    input in1,
    input in2,
    output out);
    //wire x;
    assign out = ~(in1 | in2);
   // assign out=~x;

endmodule
