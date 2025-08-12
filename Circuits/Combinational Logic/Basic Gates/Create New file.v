module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
   // always@(*)begin
        //if(
    assign motor = ring & vibrate_mode;
   // assign motor =  ring // | vibrate_motor;
    assign ringer =  ring & ~vibrate_mode;
   // assign motor =   vibrate_motor;
endmodule
