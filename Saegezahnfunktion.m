function [ ] = Saegezahnfunktion( a,n )
    x=-2*pi:0.001:2*pi;
    fn=zeros(size(x));
    
    for k=0:n
        fn=fn+cos((2*k+1)*x)/(2*k+1)^2;
    end
    fn=-(4*a/pi)*fn+a*pi/2;
    plot(x,fn,'blue');
    %------------------------------------------
    hold on
    title(['Fourierapproximation eines Sägezahnsignals mit Steigungswert ',...
        num2str(a),' und der Ordnung ',int2str(n)],'fontsize',18);
    %------------------------------------------
    % Darstellung der exakten Funktion
    x1=[-2*pi,-pi];y1=[0,a*pi];
    x2=[-pi,0];    y2=[a*pi,0];
    x3=[0,pi];     y3=[0,a*pi];
    x4=[pi,2*pi];  y4=[a*pi,0];
    xAchse_x=[-2*pi-1,2*pi+1];xAchse_y=[0,0];
    yAchse_x=[0,0];
    if a>0
        yAchse_y=[-1,a*pi+1];
        text(0.3,a*pi+1,'y-Achse','fontsize',18);
    else
        yAchse_y=[a*pi-1,1];
        text(0.3,1,'y-Achse','fontsize',18);
    end
    plot(x1,y1,'red',x2,y2,'red',x3,y3,'red',x4,y4,'red');
    plot(xAchse_x,xAchse_y,'black',yAchse_x,yAchse_y,'black');
    text(2*pi,0.2,'x-Achse','fontsize',18);
    xlabel('Absizzenwert x','fontsize',18);
    ylabel('Ordinatenwert fn(x)','fontsize',18);
    legend('fn(x)','f(x)');
    hold off
end

