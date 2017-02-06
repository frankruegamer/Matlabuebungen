k_max=20;
Eps=1e-8;

for x0=2:-0.2:0.2
    [x,k]=Newton_Iteration_2(x0,k_max,Eps,f0,f1);
    fprintf('x0 = %.1f liefert x = %.8f.\n',x0,x);
    fprintf('Es waren %u Iterationen erforderlich.\n',k);
end