-module(pe).
-author(ashish).
-compile(export_all).

%%problem 1 : multiples of 3 and 5

prob1() -> 
    T = lists:seq(1,1000),
    lists:sum([X || X <- T, X rem 3 =:= 0, X rem 5 =:= 0]).


%%problem 2 : even fibonacci series

fibo(X) when X =:= 0 -> 0;
fibo(X) when X =:= 1 -> 1;
fobo(X) -> fibo(X-1) + fibo(X-2).

prob2(A,Y) when Y =< 400000 -> 
   if A+1 rem 2 =:= 0 ->
        Y = Y + fibo(A+1),
        prob2(A+1,Y);
          true -> prob2(A+1,Y)
   end;
prob2(A,Y) when Y >= 400000 -> 
    Y.

    
%%problem 3 : largest prime factor of 600851475143 

prime(X)->
    prime(X,2);
prime(X,L) when L >= X/2 ->
    true;
prime(X,L) -> 
    case X of 
        X when X rem L =:= 0 -> false;
        X when X rem L /= 0 -> prime(X,L+1);
    end.

prob3() ->
    T = 600851475143 div 2,

    
    
    
 

%%problem 4: 

