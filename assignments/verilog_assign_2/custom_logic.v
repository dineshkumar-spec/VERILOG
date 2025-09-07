/*20.UDP for Custom Logic
Write a UDP using the given table:
f(x,y,z) = ~(~(x|y) | ~x & z);*/
primitive custom_logic(f,x,y,z);
output f;
input x,y,z;
table
0 0 0 : 0;
0 0 1 : 0;
0 1 0 : 1;
0 1 1 : 0;
1 0 0 : 1;
1 0 1 : 1;
1 1 0 : 1;
1 1 1 : 1;
endtable
endprimitive
 
