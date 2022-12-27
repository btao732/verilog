module comparator (
    A, B, F);

    input[1:0] A, B;
    output F;
    assign F = ~B[1] & ~B[0] & A[0] | ~B[1] & A[1] | ~B[0] & A[1] & A[0];

endmodule