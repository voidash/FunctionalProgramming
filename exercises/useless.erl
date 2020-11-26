-module(useless).
-export([add/2,hello/0,check/2]).

add(X,Y) -> 
X+Y.

hello() ->
 io:format("hello world~n").

check(male,X) ->
	io:format("hello , mr ~s! " , [X]);
check(female,X) ->
	io:format("hello, mrs ~s! ", [X]);
check(_,X) ->
	io:format("hello, ~s~",[X]).	


