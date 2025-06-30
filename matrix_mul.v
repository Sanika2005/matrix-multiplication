module matrix_mul(
input clk,
input rst,
input start,
input [7:0] A0,A1,A2,A3,
input [7:0] B0,B1,B2,B3,
output reg done,
output reg[15:0] C0,C1,C2,C3
    );
    always@(posedge clk)
    begin
    if(rst)begin
    C0<=0;C1<=0;C2<=0;C3<=0;
    done<=0;
    end
    
    else if(start)
    begin
    C0<=A0*B0+A1*B2;
    C1<=A0*B1+A1*B3;
    C2<=A2*B0+A3*B2;
    C3<=A2*B1+A3*B3;
    done<=1;
    end
    end
    
endmodule

