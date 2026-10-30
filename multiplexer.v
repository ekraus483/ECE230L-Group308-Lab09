module multiplexer(
    input [7:0] A, B, C, D,
    input [1:0] Sel,
    output reg [7:0] Y
);

always @(*) begin
    case(Sel)
        2'b00: Y <= A;
        2'b01: Y <= B;
        2'b10: Y <= C;
        2'b11: Y <= D;
    endcase
end

endmodule