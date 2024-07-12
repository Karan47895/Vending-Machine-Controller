// To design a vending machine for purchasing product.



// Here we have taken 4 products:
// product 0 -- price-15
// product 1 -- price-25
// product 2 -- price-30
// product 3 -- price-35




// Now we will define the different states


// 000 -- price 0  //state 0
//001 --price 5    //state 1
//010 --price-10   //state 2
//011 --price-15   //state 3
//100 --price-20   //state 4
//101 --price-25   //state 5
//110 --price-30   //state 6
//111 --price-35   //



//Counter,

module exp3(clk, rst, out, inp, product);


// Declaration of inputs.
input clk, rst;
input [2:0] inp;
input [1:0] product;



//Declaration of outputs.
output reg out;



//Declaration of state in the form of binary assignments.
parameter s0 = 3'b000;//0
               parameter s1=3'b001;//5
parameter s2 = 3'b010;//10
               parameter s3=3'b011;//15
parameter s4 = 3'b100;//20
               parameter s5=3'b101;//25
parameter s6 = 3'b110;//30
               parameter s7=3'b111;//35


// Declaration of present and nexr state.
reg [2:0] p_s, n_s;

// beginning of the main code.
always@(posedge clk)
begin
if (rst)
	begin
	p_s <= s0;
end
else p_s <= n_s;
end




always@(*)
begin
if (rst) n_s <= s0;
else
	begin
case (p_s)
		s0:
if (product == 2'b00)
                begin
                if(inp==3'b000)
	begin
	n_s <= s0;
out <= 0;
end
else if (inp == 3'b001)
                begin
                n_s<=s1;
                out<=0;
                end
                else if(inp==3'b010)
	begin
	n_s <= s2;
out <= 0;
end
else if (inp == 3'b011 ||inp==3'b100 || inp == 3'b101 || inp ==3'b110 || inp == 3'b111)
                begin
                n_s<=s0;
                out<=1;
                end
                end




                else if(product==2'b01) // price 25
	begin
	if (inp == 3'b000)
	                begin
	                n_s<=s0;
	                out<=0;
	                end
	                else if(inp==3'b001)
		begin
		n_s <= s1;
out <= 0;
end
else if (inp == 3'b010)
                begin
                n_s<=s2;
                out<=0;
                end
                else if(inp==3'b011)
	begin
	n_s <= s3;
out <= 0;
end
else if (inp == 3'b100)
                begin
                n_s<=s4;
                out<=0;
                end
                else if(inp==3'b101 || inp == 3'b110 || inp==3'b111)
	begin
	n_s <= s0;
out <= 1;
end
end




else if (product == 2'b10)//price 30
                begin
                if(inp==3'b000)
	begin
	n_s <= s0;
out <= 0;
end
else if (inp == 3'b001)
                begin
                n_s<=s1;
                out<=0;
                end
                else if(inp==3'b010)
	begin
	n_s <= s2;
out <= 0;
end
else if (inp == 3'b011)
                begin
                n_s<=s3;
                out<=0;
                end
                else if(inp==3'b100)
	begin
	n_s <= s4;
out <= 0;
end
else if (inp == 3'b101)
                begin
                n_s<=s5;
                out<=0;
                end
                else if(inp==3'b110 || inp == 3'b111)
                begin
                n_s<=s0;
                out<=1;
                end
                end





                else if(product==2'b11)
	begin
	if (inp == 3'b000)
	                begin
	                n_s<=s0;
	                out<=0;
	                end
	                else if(inp==3'b001)
		begin
		n_s <= s1;
out <= 0;
end
else if (inp == 3'b010)
                begin
                n_s<=s2;
                out<=0;
                end
                else if(inp==3'b011)
	begin
	n_s <= s3;
out <= 0;
end
else if (inp == 3'b100)
                begin
                n_s<=s4;
                out<=0;
                end
                else if(inp==3'b101)
	begin
	n_s <= s5;
out <= 0;
end
else if (inp == 3'b110)
                begin
                n_s<=s6;
                out<=0;
                end
                else if(inp==3'b111)
	begin
	n_s <= s0;
out <= 1;
end
end

// Baki Hai



s1:
if (product == 2'b00)
                begin
                if(inp==3'b000)
	begin
	n_s <= s1;
out <= 0;
end
else if (inp == 3'b001)
                begin
                n_s<=s2;
                out<=0;
                end
                else if(inp==3'b010 || inp == 3'b011||inp==3'b100 || inp == 3'b101||inp==3'b110 || inp == 3'b111)
                begin
                n_s<=s0;
                out<=1;
                end
                end


                else if(product==2'b01)
	begin
	if (inp == 3'b000)
	                begin
	                n_s<=s1;
	                out<=0;
	                end
	                else if(inp==3'b001)
		begin
		n_s <= s2;
out <= 0;
end
else if (inp == 3'b010)
                begin
                n_s<=s3;
                out<=0;
                end
                else if(inp==3'b011)
	begin
	n_s <= s4;
out <= 0;
end
else if (inp == 3'b100 || inp==3'b101 || inp == 3'b110 ||inp==3'b111 )
	begin
	n_s <= s0;
out <= 1;
end
end


else if (product == 2'b10)
                begin
                if(inp==3'b000)
	begin
	n_s <= s1;
out <= 0;
end
else if (inp == 3'b001)
                begin
                n_s<=s2;
                out<=0;
                end
                else if(inp==3'b010)
	begin
	n_s <= s3;
out <= 0;
end
else if (inp == 3'b011)
                begin
                n_s<=s4;
                out<=0;
                end
                else if(inp==3'b100)
	begin
	n_s <= s5;
out <= 0;
end
else if (inp == 3'b101 || inp==3'b110 || inp == 3'b111)
                begin
                n_s<=s0;
                out<=1;
                end
                end

                else if(product==2'b11)
	begin
	if (inp == 3'b000)
	                begin
	                n_s<=s1;
	                out<=0;
	                end
	                else if(inp==3'b001)
		begin
		n_s <= s2;
out <= 0;
end
else if (inp == 3'b010)
                begin
                n_s<=s3;
                out<=0;
                end
                else if(inp==3'b011)
	begin
	n_s <= s4;
out <= 0;
end
else if (inp == 3'b100)
                begin
                n_s<=s5;
                out<=0;
                end
                else if(inp==3'b101)
	begin
	n_s <= s6;
out <= 0;
end
else if (inp == 3'b110 || inp==3'b111)
	begin
	n_s <= s0;
out <= 1;
end
end



s2:

if (product == 2'b00)
                begin
                if(inp==3'b000)
	begin
	n_s <= s2;
out <= 0;
end
else if (inp == 3'b001 || inp==3'b010 || inp == 3'b011 || inp==3'b100 || inp == 3'b101 || inp==3'b110 || inp == 3'b111)
                begin
                n_s<=s0;
                out<=1;
                end
                end


                else if(product==2'b01)
	begin
	if (inp == 3'b000)
	                begin
	                n_s<=s2;
	                out<=0;
	                end
	                else if(inp==3'b001)
		begin
		n_s <= s3;
out <= 0;
end
else if (inp == 3'b010)
                begin
                n_s<=s4;
                out<=0;
                end
                else if(inp==3'b011 || inp == 3'b100 || inp==3'b101 || inp == 3'b110 || inp==3'b111)
	begin
	n_s <= s0;
out <= 1;
end
end

else if (product == 2'b10)
                begin
                if(inp==3'b000)
	begin
	n_s <= s2;
out <= 0;
end
else if (inp == 3'b001)
                begin
                n_s<=s3;
                out<=0;
                end
                else if(inp==3'b010)
	begin
	n_s <= s4;
out <= 0;
end
else if (inp == 3'b011)
                begin
                n_s<=s5;
                out<=0;
                end
                else if(inp==3'b100 || inp == 3'b101 || inp==3'b110 || inp == 3'b111)
                begin
                n_s<=s0;
                out<=1;
                end
                end


                else if(product==2'b11)
	begin
	if (inp == 3'b000)
	                begin
	                n_s<=s2;
	                out<=0;
	                end
	                else if(inp==3'b001)
		begin
		n_s <= s3;
out <= 0;
end
else if (inp == 3'b010)
                begin
                n_s<=s4;
                out<=0;
                end
                else if(inp==3'b011)
	begin
	n_s <= s5;
out <= 0;
end
else if (inp == 3'b100)
                begin
                n_s<=s6;
                out<=0;
                end
                else if(inp==3'b101 || inp == 3'b110 || inp==3'b111)
	begin
	n_s <= s0;
out <= 1;
end
end




s3:
if (product == 2'b00)
                begin
                if(inp==3'b000 || inp == 3'b001 || inp==3'b010 || inp == 3'b011 ||inp==3'b100 || inp == 3'b101||inp==3'b110 || inp == 3'b111)
                begin
                n_s<=s0;
                out<=1;
                end
                end


                else if(product==2'b01)
	begin
	if (inp == 3'b000)
	                begin
	                n_s<=s3;
	                out<=0;
	                end
	                else if(inp==3'b001)
		begin
		n_s <= s4;
out <= 0;
end
else if (inp == 3'b010|| inp==3'b011 || inp == 3'b100 ||inp==3'b101 || inp == 3'b110||inp==3'b111)
	begin
	n_s <= s0;
out <= 1;
end
end

else if (product == 2'b10)
                begin
                if(inp==3'b000)
	begin
	n_s <= s3;
out <= 0;
end
else if (inp == 3'b001)
                begin
                n_s<=s4;
                out<=0;
                end
                else if(inp==3'b010)
	begin
	n_s <= s5;
out <= 0;
end
else if (inp == 3'b011||inp==3'b100 || inp == 3'b101||inp==3'b110 || inp == 3'b111)
                begin
                n_s<=s0;
                out<=1;
                end
                end

                else if(product==2'b11)
	begin
	if (inp == 3'b000)
	                begin
	                n_s<=s3;
	                out<=0;
	                end
	                else if(inp==3'b001)
		begin
		n_s <= s4;
out <= 0;
end
else if (inp == 3'b010)
                begin
                n_s<=s5;
                out<=0;
                end
                else if(inp==3'b011)
	begin
	n_s <= s6;
out <= 0;
end
else if (inp == 3'b100||inp==3'b101 || inp == 3'b110||inp==3'b111)
	begin
	n_s <= s0;
out <= 1;
end
end
// BAKI

s4:
if (product == 2'b00)
                begin
                if(inp==3'b000 || inp == 3'b001 || inp==3'b010 || inp == 3'b011 ||inp==3'b100 || inp == 3'b101||inp==3'b110 || inp == 3'b111)
                begin
                n_s<=s0;
                out<=1;
                end
                end
                else if(product==2'b01)
	begin
	if (inp == 3'b000)
	                begin
	                n_s<=s4;
	                out<=0;
	                end
	                else if(inp==3'b001 || inp == 3'b010 || inp==3'b011 || inp == 3'b100 ||inp==3'b101 || inp == 3'b110||inp==3'b111)
		begin
		n_s <= s0;
out <= 1;
end
end
else if (product == 2'b10)
                begin
                if(inp==3'b000)
	begin
	n_s <= s4;
out <= 0;
end
else if (inp == 3'b001)
                begin
                n_s<=s5;
                out<=0;
                end
                else if(inp==3'b010 || inp == 3'b011 ||inp==3'b100 || inp == 3'b101||inp==3'b110 || inp == 3'b111)
                begin
                n_s<=s0;
                out<=1;
                end
                end


                else if(product==2'b11)
	begin
	if (inp == 3'b000)
	                begin
	                n_s<=s4;
	                out<=0;
	                end
	                else if(inp==3'b001)
		begin
		n_s <= s5;
out <= 0;
end
else if (inp == 3'b010)
                begin
                n_s<=s6;
                out<=0;
                end
                else if(inp==3'b011 || inp == 3'b100 ||inp==3'b101 || inp == 3'b110||inp==3'b111)
	begin
	n_s <= s0;
out <= 1;
end
end


s5:
if (product == 2'b00)
                begin
                if(inp==3'b000 || inp == 3'b001 || inp==3'b010 || inp == 3'b011 ||inp==3'b100 || inp == 3'b101||inp==3'b110 || inp == 3'b111)
                begin
                n_s<=s0;
                out<=1;
                end
                end
                else if(product==2'b01)
	begin
	if (inp == 3'b000 || inp==3'b001 || inp == 3'b010 || inp==3'b011 || inp == 3'b100 ||inp==3'b101 || inp == 3'b110||inp==3'b111)
		begin
		n_s <= s0;
out <= 1;
end
end

else if (product == 2'b10)
                begin
                if(inp==3'b000)
	begin
	n_s <= s5;
out <= 0;
end
else if (inp == 3'b001 || inp==3'b010 || inp == 3'b011 ||inp==3'b100 || inp == 3'b101||inp==3'b110 || inp == 3'b111)
                begin
                n_s<=s0;
                out<=1;
                end
                end

                else if(product==2'b11)
	begin
	if (inp == 3'b000)
	                begin
	                n_s<=s5;
	                out<=0;
	                end
	                else if(inp==3'b001)
		begin
		n_s <= s6;
out <= 0;
end
else if (inp == 3'b010 || inp==3'b011 || inp == 3'b100 ||inp==3'b101 || inp == 3'b110||inp==3'b111)
	begin
	n_s <= s0;
out <= 1;
end
end


s6:
if (product == 2'b00)
                begin
                if(inp==3'b000 || inp == 3'b001 || inp==3'b010 || inp == 3'b011 ||inp==3'b100 || inp == 3'b101||inp==3'b110 || inp == 3'b111)
                begin
                n_s<=s0;
                out<=1;
                end
                end
                else if(product==2'b01)
	begin
	if (inp == 3'b000 || inp==3'b001 || inp == 3'b010 || inp==3'b011 || inp == 3'b100 ||inp==3'b101 || inp == 3'b110||inp==3'b111)
		begin
		n_s <= s0;
out <= 1;
end
end

else if (product == 2'b10)
                begin
                if(inp==3'b000 || inp == 3'b001 || inp==3'b010 || inp == 3'b011 ||inp==3'b100 || inp == 3'b101||inp==3'b110 || inp == 3'b111)
                begin
                n_s<=s0;
                out<=1;
                end
                end
                else if(product==2'b11)
	begin
	if (inp == 3'b000)
	                begin
	                n_s<=s6;
	                out<=0;
	                end
	                else if(inp==3'b001 || inp == 3'b010 || inp==3'b011 || inp == 3'b100 ||inp==3'b101 || inp == 3'b110||inp==3'b111)
		begin
		n_s <= s0;
out <= 1;
end
end

endcase
end 
end 
endmodule