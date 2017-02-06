function [ ] = Alternierende_Funktion( a,n )
    x=-2*pi:0.001:2*pi;
    fn=zeros(size(x));
    
    for k=0:n
        fn=fn-(4*a/pi)*cos((2*k+1)*x)/(2*k+1)^2+2*a*sin((2*k+1)*x)/(2*k+1);
    end
    plot(x,fn,'blue');
    %------------------------------------------
    hold on
    title(['Fourierapproximation eines alternierenden Signals mit Steigungswert ',...
        num2str(a),' und der Ordnung ',int2str(n)],'fontsize',18);
    %------------------------------------------
    % Darstellung der exakten Funktion
    x1=[-2*pi,-pi];y1=[0,a*pi];
    x2=[-pi,0];    y2=[0,-a*pi];
    x3=[0,pi];     y3=[0,a*pi];
    x4=[pi,2*pi];  y4=[0,-a*pi];
    x5=[-pi,-pi];  y5=[0,a*pi];
    x6=[0,0];      y6=[0,-a*pi];
    x7=[pi,pi];    y7=[0,a*pi];
    xAchse_x=[-2*pi-1,2*pi+1];xAchse_y=[0,0];
    yAchse_x=[0,0];yAchse_y=[-abs(a)*pi-1,abs(a)*pi+1];
    text(0.3,abs(a)*pi+1,'y-Achse','fontsize',18);
    
    plot(xAchse_x,xAchse_y,'black',yAchse_x,yAchse_y,'black');
    plot(x1,y1,'red',x2,y2,'red',x3,y3,'red',x4,y4,'red',x5,y5,'red',x6,y6,'red',x7,y7,'red');
    text(2*pi,0.2,'x-Achse','fontsize',18);
    text(0.2,-a*pi,'Gibbsphänomen','fontsize',18);
    %------------------------------------------
    xlabel('Absizzenwert x','fontsize',18);
    ylabel('Ordinatenwert fn(x)','fontsize',18);
    legend('fn(x)','f(x)');
    hold off
end

