function [ ] = Fourierapproximation( a,b,n )
   if a==0
       error('Bitte a ungleich 0 eingeben');
   end
   x=-3*pi:0.001:3*pi;
   fn=zeros(size(x));
   
   for k=0:n
       fn=fn+Fourierkoeffizient_a(a,b,k)*cos(k*x);
   end
   plot(x,fn,'blue');
   %-----------------------------------------------------------------------
   hold on
   x=-pi:0.001:pi;plot(x,a*x.^2+b,'red');
   x=-3*pi:0.001:-pi;plot(x,a*(x+2*pi).^2+b,'red');
   x=pi:0.001:3*pi;plot(x,a*(x-2*pi).^2+b,'red');
   zero=[0,0];
   asign=sign(a);
   fontsz=18;
   xAchse_x=[-3*pi-1,3*pi+1];
   yAchse_y=[a*pi^2+b+asign,b-asign];
   plot(xAchse_x,zero,'black');
   plot(zero,yAchse_y,'black');
   text(3*pi+0.5,0.3,'x-Achse','fontsize',fontsz);
   text(0.5,(asign+1)/2*a*pi^2+b+0.5,'y-Achse','fontsize',fontsz);
   title(['Parabolisches Signal der Öffnungsbreite a = ',num2str(a),...
       ' mit y-Achsenabschnitt b = ',num2str(b), ' und der Ordnung n = ',...
       int2str(n)],'fontsize',fontsz);
   xlabel('Abszissenwerte x','fontsize',fontsz);
   ylabel('Ordinatenwerte f(x) und fn(x)','fontsize',fontsz);
   legend('fn','f');
   hold off
end