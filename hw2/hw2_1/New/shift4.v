/****************************
purpose: Given a 16 bit input perform the given opcode by 4 when sh is high
****************************/

module shift4 (in, op, sh, out);
input [15:0] in;
input sh;
input [1:0] op;

output out;

wire [15:0] trans; 

mux4 up_sel0  (.in0(in[12])), .in1(0),      .in2(in[4]),  .in3(in[4]),  .s(op), .out(trans[0])); //Corner Case
mux4 up_sel1  (.in0(in[13])), .in1(0),      .in2(in[5]),  .in3(in[5]),  .s(op), .out(trans[1])); //Corner Case
mux4 up_sel2  (.in0(in[14])), .in1(0),      .in2(in[6]),  .in3(in[6]),  .s(op), .out(trans[2])); //Corner Case
mux4 up_sel3  (.in0(in[15])), .in1(0]),     .in2(in[7]),  .in3(in[7]),  .s(op), .out(trans[3])); //Corner Case
mux4 up_sel4  (.in0(in[0])),  .in1(in[0]),  .in2(in[8]),  .in3(in[8]),  .s(op), .out(trans[4]));
mux4 up_sel5  (.in0(in[1])),  .in1(in[1]),  .in2(in[9]),  .in3(in[9]),  .s(op), .out(trans[5]));
mux4 up_sel6  (.in0(in[2])),  .in1(in[2]),  .in2(in[10]), .in3(in[10]), .s(op), .out(trans[6]));
mux4 up_sel7  (.in0(in[3])),  .in1(in[3]),  .in2(in[11]), .in3(in[11]), .s(op), .out(trans[7]));
mux4 up_sel8  (.in0(in[4])),  .in1(in[4]),  .in2(in[12]), .in3(in[12]), .s(op), .out(trans[8]));
mux4 up_sel9  (.in0(in[5])),  .in1(in[5]),  .in2(in[13]), .in3(in[13]), .s(op), .out(trans[9]));
mux4 up_sel10 (.in0(in[6])),  .in1(in[6]),  .in2(in[14]), .in3(in[14]), .s(op), .out(trans[10]));
mux4 up_sel11 (.in0(in[7])),  .in1(in[7]),  .in2(in[15]), .in3(in[15]), .s(op), .out(trans[11]));
mux4 up_sel12 (.in0(in[8])),  .in1(in[8]),  .in2(in[15]), .in3(0),      .s(op), .out(trans[12])); //Corner Case
mux4 up_sel13 (.in0(in[9])),  .in1(in[9]),  .in2(in[15]), .in3(0),      .s(op), .out(trans[13])); //Corner Case
mux4 up_sel14 (.in0(in[10])), .in1(in[10]), .in2(in[15]), .in3(0),      .s(op), .out(trans[14])); //Corner Case
mux4 up_sel15 (.in0(in[12])), .in1(in[11]), .in2(in[15]), .in3(0),      .s(op), .out(trans[15])); //Corner Case

mux2 low_sel[15:0] (.in0(in), .in1(trans), .s(sh), .out(out)); //To shift or not to shift, that is the question
endmodule 
