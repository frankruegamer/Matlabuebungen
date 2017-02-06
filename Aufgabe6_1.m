F1=@(x,y)(sin(x*y)/2);
F2=@(x,y)(2+exp(-x)/2);

x=0.4;
y=3;
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