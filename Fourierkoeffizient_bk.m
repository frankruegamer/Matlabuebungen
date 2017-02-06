function [ bk ] = Fourierkoeffizient_bk( a,b,k )
    % Schrittweite
    h=pi/5000;
    x=0:h:2*pi;
    y=(1/pi)*(a./(x+1)+b).*sin(k*x);
    bk=h*((y(1)+y(end))/2+sum(y)-y(1)-y(end));
end

