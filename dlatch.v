module dlatch(
    input Data, Enabled,
    output reg Q, 
    output NotQ
);

always @(Enabled, Data) begin
    if(Enabled)
        Q <= Data;
end

assign NotQ = ~Q;

endmodule
