-module(functions).
-compile(export_all). 

head([H|_ ])-> H.

second([_,X|_]) -> X.

same(X,X) -> true;
same(_,_) -> false.


valid_time({Date = {Y,M,D}, Time = {H,M,S}}) ->
	io:format("The date ~p is ~p/~p/~p ~n",[Date,Y,M,D]),
io:format("the time is ~p is ~p:~p:~p",[Time,H,M,S]);
valid_time(_) ->
	io:format("parameters are messed up").

%% guards 
right_age(X) when X >= 16 , x =< 104 ->
	true;
right_age(_) -> 
	false.

fine() -> 
	if 1 =:= 2 -> works;
		true -> f_this 
	end,
	if 1 =:= 2; 1 =:= 1 -> "this works as in works"
	end.


