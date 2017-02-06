function [ x,k ] = Newton_Iteration_2( x0,k_max,Eps,f0,f1 )
    
    x=x0;
    x_vorher=x0+1;
    k=0;

    while abs(x-x_vorher)>=Eps && k<=k_max
        x_vorher=x;
        x=Fkt(x);
        k=k+1;
    end
end

