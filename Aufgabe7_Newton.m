f1=@(x,y)(sin(x*y)/2-y/(4*pi)-x/2);
f2=@(x,y)((1-1/(4*pi))*(exp(2*x-1)-1)+y/pi-2*x);

f11=@(x,y)(y*cos(x*y)/2-1/2);
f12=@(x,y)(x*cos(x*y)-1/(4*pi));
f21=@(x,y)(2*(1-1/(4*pi))*exp(2*x-1)-2);
f22=@(x,y)(1/pi);

% Startwerte
x=1.29;
y=-3;
Eps=1e-8;

for k=1:100
    x_vorher=x;
    y_vorher=y;
    J=[f11(x,y) f12(x,y); f21(x,y) f22(x,y)];
    b=[-f1(x,y); -f2(x,y)];
    h=J\b;
    x=x+h(1);
    y=y+h(2);
    if abs(x-x_vorher)+abs(y-y_vorher)<=Eps
        break
    end
end

fprintf('Es waren %u Iterationen notwendig.\n',k);
fprintf('x = %.7f, y = %.7f\n', x, y);