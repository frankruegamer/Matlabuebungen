F1='sin(x*y)/2-y/(4*pi)-x/2=0';
F2='(1-1/(4*pi))*(exp(2*x-1)-1)+y/pi-2*x=0';

dims=[-0.5,2,-20,5];

p1=ezplot(F1,dims);
hold on
p2=ezplot(F2,dims);
set(p1,'color','red');
set(p2,'color','blue');
hold off