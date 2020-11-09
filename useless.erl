-module(useless).
-author("Ashish Thapa").
-define(sub(X,Y),X-Y).
-export([add/2,hello/0,greet_and_add_two/1,sub/2]).

add(A,B) -> A + B.

hello() -> io:format("This is Hello " ).

greet_and_add_two(X) -> hello() , add(X,2).

