x=3/4;
a=1/2;
N=1:50;
X=zeros(1,50);

for n=N
    X(n)=x;
    x=f(a,x);
end

plot(N,X,'red-*');

hold on
Achse1=[0,n];
Achse2=[x,x];
plot(Achse1,Achse2,'black-');
fontsz=18;
title('Die Punktfolge (n,xn)','fontsize',fontsz);
text(n+1,x,sprintf('Grenzwert x = %.4g',x));
xlabel('Indexzahlen N','fontsize',fontsz);
ylabel('Folgenglieder xn','fontsize',fontsz);
hold off