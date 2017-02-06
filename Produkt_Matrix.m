A=[1 2 3;4 5 6;7 8 9];
B=[5 4 6;1 7 5;3 9 6];

[n,m]=size(A);
[p,q]=size(B);

if m~=p
    error('Die Spaltenzahl von A muss gleich der Zeilenzahl von B sein!');
end

AB=zeros(n,q);

tic;
for i=1:n
    for j=1:q
        for k=1:m
            AB(i,j)=AB(i,j)+A(i,k)*B(k,j);
        end
    end
end
toc;

disp('Das Matrizenprodukt lautet:');
disp(AB);