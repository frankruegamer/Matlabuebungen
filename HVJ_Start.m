[x,y]=meshgrid(-1:0.01:6,-6:0.01:-4);
z=x.^2-3*y.^2.*sin(y)+x.^2/7-6*x;
c_plot=contour(x,y,z,20);
clabel(c_plot,'manual');
%--------------------------------------------------------------------------
n=2;x0=[6,-6];h=0.1;k_max=100;Eps=1e-10;
f=@(x)x(1)^2-3*x(2)^2*sin(x(2))+x(1)^2/7-6*x(1);
[x_min,f_min,k]=HJV(n,x0,h,Eps,k_max,f);
%
fprintf('Das Minimum liegt an der Stelle (x_min, y_min)=(%.4f, %.4f).\n', x_min);
fprintf('Das Minimum hat den Wert f_min = %.4f.\n', f_min);
fprintf('Es waren %u Iterationen notwendig.\n', k);