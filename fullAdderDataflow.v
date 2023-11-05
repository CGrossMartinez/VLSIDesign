module fullAdderDataflow (carry, sum, a, b, cin);

output carry, sum;
input a, b, cin;

assign {carry,sum} = a + b + cin;

endmodule
