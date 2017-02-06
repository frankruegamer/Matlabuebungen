A=[2 6 -7 2 5 8;4 6 -8 4 6 -1;0 5 0 -5 17 6];

tic;
Summe=sum(sum(A));
toc;

fprintf('Die Summe der Matrixelemente beträgt: %d\n',Summe);