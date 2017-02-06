A=[2 6 -7 2 5 8; 4 6 -8 4 6 -1; 0 5 0 -5 17 6];
[n,m]=size(A);
Summe=0;
for k=1:m
    Summe=Summe+A(1,k);
end
str=sprintf('Die Summe der ersten Zeile ist: %d',Summe);
disp(str)