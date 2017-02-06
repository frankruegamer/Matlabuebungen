f1=@(x,y)exp(2*x)+x^2-10*sin(x*y/7)-5;
f2=@(x,y)y/8-x*cos(x/6)-10*y*exp(x)+3*pi;
f11=@(x,y)2*exp(2*x)+2*x-10*cos(x*y/7)*y/7;
f12=@(x,y)-10*cos(x*y/7)*x/7;
f21=@(x,y)x*sin(x/6)/6-cos(x/6)-10*y*exp(x);
f22=@(x,y)1/8*-10*exp(x);
X=-1;Y=3;
Eps=1e-10;
for k=0:1000
    x=X;y=Y;
    J=[f11(x,y) f12(x,y);f21(x,y) f22(x,y)];
    b=[-f1(x,y);-f2(x,y)];
    h=J\b;
    X=X+h(1);
    Y=Y+h(2);
    if max(abs(X-x),abs(Y-y))<Eps
        break
    end
end
fprintf('Es wurden %u Iterationen benötigt. Die Lösungen: \n',k);
fprintf('x = %.9f und y = %.9f\n',X,Y);