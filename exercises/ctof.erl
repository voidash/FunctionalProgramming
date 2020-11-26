-module(ctof).
-author(ashish).
-export([ctf/1,ftc/1,convert/1,min/1,max/1,min_max/1]).

ctf(Celsius) ->
    io:format("~f",[Celsius*180/100+32]).

ftc(Farenheight) ->
    io:format("~f",[(Farenheight-32)/180*100]).

convert(Data) ->
    case Data of 
        {c,X} -> X * 180/100 + 32;
        {f,X} -> (X-32)/180*100;
        _ -> io:format("Not a valid format")
    end.

min(List) ->
    [X|L] = List,
    minimum(X,L).

minimum(X,L) ->
    if L /= [] ->
    [P|T] = L,
    if P =< X ->
           minimum(P,T);
    true ->
           minimum(X,T)
    end;
    true ->
           X
    end.

max(List) ->
    [X|L] = List,
    maximum(X,L).
    
maximum(X,L) ->
    if L /= [] ->
    [P|T] = L,
    if P >= X ->
           maximum(P,T);
    true ->
           maximum(X,T)
    end;
    true ->
           X
    end.

min_max(List)->
    [X|L]= List,
    {T,Z} = {minimum(X,L),maximum(X,L)},
    {T,Z}.
