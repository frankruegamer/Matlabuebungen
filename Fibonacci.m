function [ fib,n ]=Fibonacci( M )
    if M <= 0
        error('Bitte M positiv wählen');
    end
    
    fib(1,1)=0;
    fib(2,1)=1;
    n=2;
    next=fib(n,1)+fib(n-1,1);
    while next <= M
        fib(n+1,1)=next;
        n=n+1;
        next=fib(n,1)+fib(n-1,1);
    end
end