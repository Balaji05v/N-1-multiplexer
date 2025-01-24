module mux_n_tb;
 parameter N = 4;
 reg [N-1:0] in;
 reg [log2(N)-1:0] sel;
 wire out;
 mux_n #(N) uut (.in(in),.sel(sel),.out(out));
 initial begin
 $display("Time\tin\tsel\tout");
 $monitor("%0t\t%b\t%b\t%b", $time, in, sel, out);
 in = 4'b1010; sel = 2'b00; #10;
 in = 4'b1010; sel = 2'b01; #10;
 in = 4'b1010; sel = 2'b10; #10;
 in = 4'b1010; sel = 2'b11; #10;
 $finish;
 end
endmodule
