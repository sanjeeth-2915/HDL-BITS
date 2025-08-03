module top_module( 
    input a, 
    input b, 
  //  wire c;
    output out );
    assign out=~(a|b);
  //  assign out= ~c;
endmodule
