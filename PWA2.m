function [ AV ] = PWA2( EV )
    n=length(EV);
    AV=zeros(1,n);
    
    l=1;
    for i=1:n
        if EV(i) > 0
            AV(l)=EV(i);
            l=l+1;
        end
    end
    
    AV(l:n)=[];
end