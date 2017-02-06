function [ ] = Fourierreihe( a,b,n )
    x=-2*pi:1E-3:2*pi;
    fn=zeros(size(x));
    
    for k=0:n
        fn=fn+Fourierkoeffizient_ak(a,b,k)*cos(k*x)+Fourierkoeffizient_bk(a,b,k)*sin(k*x);
    end

    plot(x,fn,'blue');
    %----------------------------------------------------------------------
    hold on
    x=0:0.001:2*pi;plot(x,a./(x+1)+b,'red');
    x=-2*pi:0.001:0;plot(x,a./(x+2*pi+1)+b,'red');
    nul=[0,0];
    xAchse_x=[-2*pi-1,2*pi+1];
    if a > 0
        yAchse_y=[b,a+b];
    else
        yAchse_y=[a+b,b];
    end
    plot(xAchse_x,nul,'black');
    plot(nul,yAchse_y,'black');
    title(['Fourierreihe eines Signals der Ordnung ',int2str(n),...
        'mit den Parametern a = ',num2str(a),', b = ',num2str(b)]);
    xlabel('Abszissenwerte x');
    ylabel('Ordinatenwerte y');
    text(2*pi+0.1,0.1,'x-Achse');
    if a > 0
        text(0.3,1+b+0.3,'y-Achse');
    else
        text(0.3,b+0.3,'y-Achse');
    end
    text(0.3,a+b,'Gibbsphänomen');
    legend('fn','f');
    legend('boxoff');
    hold off
end
