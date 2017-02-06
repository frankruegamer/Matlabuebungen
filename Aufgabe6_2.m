F1=@(x,y)(sin(x*y)-y/(2*pi));
F2=@(x,y)(pi*(2*x-(1-1/(4*pi))*(exp(2*x-1)-1)));

x=0.55;
y=3.3;
Eps=1e-8;

for k=1:100
    x_vorher=x;
    y_vorher=y;
    x=F1(x,y);
    y=F2(x,y);
    if abs(x-x_vorher)+abs(y-y_vorher) <= Eps
        break
    end
end

fprintf('Es waren %u Iterationen notwendig.\n',k);
fprintf('x = %.7f, y = %.7f\n', x, y);