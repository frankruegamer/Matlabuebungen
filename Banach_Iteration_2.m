%a=1/2;
N=1:50;
A=[0.5,1,1.25,1.375,1.40155,2];

k=1;
for a=A
    x=3/4;
    X=zeros(1,50);
    for n=N
        X(n)=x;
        x=f(a,x);
    end
    subplot(3,2,k);    
    plot(N,X,'red-*');
    hold on
    Achse1=[0,n];
    Achse2=[x,x];
    plot(Achse1,Achse2,'black-');
    fontsz=18;
    title(sprintf('Die Punktfolge (n,xn) für Parameter a = %g',a),'fontsize',fontsz);
    xlabel('Indexzahlen N','fontsize',fontsz);
    ylabel('Folgenglieder xn','fontsize',fontsz);
    hold off
    k=k+1;
end