function [x_min,f_min,k]=HJV(n,xo,h,Eps,k_max,f)
E=eye(n);
for k=1:k_max
    %--------- Iterationsplot nur f�r n=2 ----------
    hold on;                                        
    plot(xo(1),xo(2),'black.');                     
    if k<=17                                          
        text(xo(1)+0.05,xo(2),int2str(k-1));   
    end                                              
    hold off;                                       
    %-----------------------------------------------
    z=xo;fo=f(z);
    for j=1:n
        zm=z-h*E(j,:);fm=f(zm);zp=z+h*E(j,:);fp=f(zp);
        if fm<min(fo,fp)
           z=zm;fo=fm;
        end
        if fp<min(fo,fm)
           z=zp;fo=fp;
        end
    end
    %--------------------------------------------
    if z==xo
        h=h/2;
        if h<=Eps
            break
        end
    else
        x=z;z=x+(x-xo);fz=f(z);
        if fz<fo
            xo=z;fo=fz;
        else
            xo=x;
        end
    end
    %--------------------------------------------
end
x_min=xo;f_min=fo;
    