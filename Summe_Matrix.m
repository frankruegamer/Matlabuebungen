A=[2 6 -7 2 5 8;4 6 -8 4 6 -1;0 5 0 -5 17 6];

[n,m]=size(A);
Summe=0;
tic;
for l=1:n
    for k=1:m
        Summe=Summe+A(l,k);
    end
end
toc;
fprintf('Die Summe der Matrixelemente beträgt: %d\n',Summe);
