function [ AV ] = PWA( EV )
    n=length(EV);
    AV=[];
    for i=1:n
        if EV(i) > 0
            AV=[AV EV(i)];
        end
    end
end