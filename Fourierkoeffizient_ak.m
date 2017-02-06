function [ ak ] = Fourierkoeffizient_ak( a,b,k )
    % Schrittweite
    h=pi/5000;
    x=0:h:2*pi;
    y=(1/pi)*(a./(x+1)+b).*cos(k*x);
    ak=h*((y(1)+y(end))/2+sum(y)-y(1)-y(end));
    if k==0
        ak=ak/2;
    end
end

