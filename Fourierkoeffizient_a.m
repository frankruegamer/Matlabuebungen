function [ ak ] = Fourierkoeffizient_a( a,b,k )
    h=2*pi/1000;
    x=-pi:h:pi;
    y=(1/pi)*(a*x.^2+b).*cos(k*x);
    ak=h*((y(1)+y(end))/2+sum(y)-y(1)-y(end));
    if k==0
        ak=ak/2;
    end
end