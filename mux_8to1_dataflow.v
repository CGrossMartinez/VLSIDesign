module mux_8to1_dataflow(out, in, sel);

/*output out;
input [3:0] in;
input [1:0] sel;

assign out = sel[1] ? (sel[0] ? in[3]:in[2]) : (sel[0] ? in[1]:in[0]);*/

output out;
input [7:0] in;
input [2:0] sel;

assign out = sel[2] ? (sel[1] ? (sel[0] ? in[7]:in[6]) : (sel[0] ? in[5]:in[4])) |
                      (sel[1] ? (sel[0] ? in[3]:in[2]) : (sel[0] ? in[1]:in[0]));          
                      

endmodule
