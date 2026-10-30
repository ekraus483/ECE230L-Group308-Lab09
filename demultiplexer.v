module demultiplexer
#(
    parameter BIT_COUNT = 8
)
(
    input [BIT_COUNT - 1:0] In,
    input [1:0] Sel,
    output reg [BIT_COUNT - 1:0] Y1, Y2, Y3, Y4
);

always @(*) begin
    case(Sel)
        2'b00: {Y4, Y3, Y2, Y1} <= {{BIT_COUNT{1'b0}}, {BIT_COUNT{1'b0}}, {BIT_COUNT{1'b0}}, In};
        2'b01: {Y4, Y3, Y2, Y1} <= {{BIT_COUNT{1'b0}}, {BIT_COUNT{1'b0}}, In, {BIT_COUNT{1'b0}}};
        2'b10: {Y4, Y3, Y2, Y1} <= {{BIT_COUNT{1'b0}}, In, {BIT_COUNT{1'b0}}, {BIT_COUNT{1'b0}}};
        2'b11: {Y4, Y3, Y2, Y1} <= {In, {BIT_COUNT{1'b0}}, {BIT_COUNT{1'b0}}, {BIT_COUNT{1'b0}}};
    endcase
end

endmodule
