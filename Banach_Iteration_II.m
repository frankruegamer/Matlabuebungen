% Fkt=inline('2*(1-exp(-x))');
% Fkt=@(x)2*(1-exp(-x));

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
fprintf('Es wurden %u Iterationen benötigt.\n',k);
fprintf('Die Lösung lautet x = %.8f.\n',x);
fprintf('Das Residuum hat den Wert %.8f.\n',Res);
