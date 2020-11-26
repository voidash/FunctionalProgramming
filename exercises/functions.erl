-module(functions).

-compile(export_all).

head([H | _]) -> H.

second([_, X | _]) -> X.

same(X, X) ->
    true; %% expression matching . Accepts X . You can' t redefine the content inside X.
%% Nextt Args is also X. So match the expression. True then run line 8 . false then the signature in 10 is more relevant
same(_, _) -> false.

valid_time({Date = {Y, M, D}, Time = {H, M, S}}) ->
    io:format("The date ~p is ~p/~p/~p ~n",
              [Date, Y, M, D]),
    io:format("the time is ~p is ~p:~p:~p",
              [Time, H, M, S]);
valid_time(_) -> io:format("parameters are messed up").

%% guards
right_age(X) when X >= 16, x =< 104 -> true;
right_age(_) -> false.

fine() ->
    if 1 =:= 2 -> works;
       true ->
           "some Atom to tell that something went "
           "wrong "
    end,
    if 1 =:= 2; 1 =:= 1 ->
           "this works as in the program works. "
           "Not optimized but works"
    end.


insert(X,[]) ->
		[X];
insert(X,Set) ->
		case lists:member(X,Set) of 
			true -> Set;
			false ->[X|Set]
		end.

