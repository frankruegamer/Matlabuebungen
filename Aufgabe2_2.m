A=[2 0 1 8;-3 8 0 8;2 -3 0 -8];
[n,m]=size(A);
V=zeros(n,m);

for i=1:n
    for j=1:m
        if A(i,j) > 0
            V(i,j)=1;
        elseif A(i,j) < 0
            V(i,j)=-1;
        end
    end
end

disp('Die Ausgabematrix lautet: ');
disp(V);