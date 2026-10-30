module memory
#(
    parameter BIT_COUNT = 8
)
(
    input [BIT_COUNT - 1:0] Data,
    input Enabled,
    output [BIT_COUNT - 1:0] Out
);

genvar i;   
generate
    for(i = 0; i < BIT_COUNT; i = i + 1) begin
        dlatch inst(
            .Data(Data[i]),
            .Enabled(Enabled),
            .Q(Out[i])
        );
    end
endgenerate 

endmodule
