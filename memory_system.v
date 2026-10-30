module memory_system
#(
    parameter MEM_MOD_COUNT = 4
)
(
    input [7:0] Data,
    input Enabled,
    input [1:0] Addr,
    output [7:0] Memory
);

wire [7:0] storeWire[MEM_MOD_COUNT-1:0];
wire enableWire[MEM_MOD_COUNT-1:0];
wire [7:0] outputWire[MEM_MOD_COUNT-1:0];

demultiplexer demuxIn(
    .In(Data),
    .Sel(Addr),
    .Y1(storeWire[0]),
    .Y2(storeWire[1]),
    .Y3(storeWire[2]),
    .Y4(storeWire[3])
);

demultiplexer 
#(
    .BIT_COUNT(1)
) selectEnable ( 
    .In(Enabled),
    .Sel(Addr),
    .Y1(enableWire[0]),
    .Y2(enableWire[1]),
    .Y3(enableWire[2]),
    .Y4(enableWire[3])
);

genvar i;
generate
    for(i = 0; i < MEM_MOD_COUNT; i = i + 1) begin
        memory inst(
            .Data(storeWire[i]),
            .Enabled(enableWire[i]),
            .Out(outputWire[i])
        );
    end
endgenerate 

multiplexer muxOut(
    .A(outputWire[0]),
    .B(outputWire[1]),
    .C(outputWire[2]),
    .D(outputWire[3]),
    .Sel(Addr),
    .Y(Memory)
);

endmodule
