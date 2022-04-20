module encoderModule(
encodeOut , //  4 bit output
encodeIn ,  //  16 bit input
enable      //  encoder enable
);

output [3:0] encodeOut  ;
input  enable ; 
input [15:0] encodeIn ; 
     
reg [3:0] encodeOut ;
      
always @ (enable or encodeIn)
begin
  encodeIn = 0;
  if (enable) begin
    case (encodeIn) 
      16'h0002 : encodeOut = 1; 
      16'h0004 : encodeOut = 2; 
      16'h0008 : encodeOut = 3; 
      16'h0010 : encodeOut = 4;
      16'h0020 : encodeOut = 5; 
      16'h0040 : encodeOut = 6; 
      16'h0080 : encodeOut = 7; 
      16'h0100 : encodeOut = 8;
      16'h0200 : encodeOut = 9;
      16'h0400 : encodeOut = 10; 
      16'h0800 : encodeOut = 11; 
      16'h1000 : encodeOut = 12; 
      16'h2000 : encodeOut = 13; 
      16'h4000 : encodeOut = 14; 
      16'h8000 : encodeOut = 15; 
   endcase
  end
end

endmodule
