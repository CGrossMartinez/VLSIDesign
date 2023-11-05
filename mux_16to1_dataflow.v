module mux_16to1_dataflow (out, in, sel);

output out;
input [15:0] in;
input [3:0] sel;


assign out = sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? in[15] : in[14]) : (sel[0] ? in[13] : in[12])):
                                (sel[1] ? (sel[0] ? in[11] : in[10]) : (sel[0] ? in[9] : in[8]))):
                      (sel[2] ? (sel[1] ? (sel[0] ? in[7] : in[6]) : (sel[0] ? in[5] : in[4])):
                                (sel[1] ? (sel[0] ? in[3] : in[2]) : (sel[0] ? in[1] : in[0])));

endmodule
