module D_FF (q, d, rst_n, clk,init_value);  
 output q; 
 input d, rst_n, clk,init_value;  
 reg q; // q is stateholding  
 always @(posedge clk or negedge rst_n)  
 if (~rst_n)  
 q <= init_value;     // On reset, set to 0  
 else  
 q <= d; // Otherwise out = d   

 endmodule  