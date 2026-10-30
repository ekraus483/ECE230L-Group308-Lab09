module top(
    input [15:0] sw,
    input btnC, 
    output [15:0] led
);

dlatch part1(
    .Data(sw[0]),
    .Q(led[0]),
    .NotQ(led[1]),
    .Enabled(btnC)
);

memory_system part2(
    .Data(sw[15:8]),
    .Addr(sw[7:6]),
    .Enabled(btnC),
    .Memory(led[15:8])
);

endmodule
