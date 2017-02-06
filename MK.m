function [ V ] = MK( M,K )
    [n,m]=size(M);
    V=zeros(n,m);
    for i=1:n
        for j=1:m
            if M(i,j) >= K
                V(i,j)=K;
            else
                V(i,j)=M(i,j);
            end
        end
    end
end

