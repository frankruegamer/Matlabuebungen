f0=@(x)1-exp(-x)-x/2;
f1=@(x)exp(-x)-1/2;
Fkt=@(x)x-f0(x)/f1(x);

k=0;
k_max=49;
x=1;
x_vorher=0;
Eps=1e-8;

while abs(x-x_vorher)>=Eps && k<=k_max
    x_vorher=x;
    x=Fkt(x);
    k=k+1;
end

Res=x-Fkt(x);
fprintf('Es wurden %u Iterationen ben�tigt.\n',k);
fprintf('Die L�sung lautet x = %.8f.\n',x);
fprintf('Das Residuum hat den Wert %.8f.\n',Res);
