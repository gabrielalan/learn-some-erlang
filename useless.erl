%% Learning erlang modules

-module(useless).

-export([add/2, add/3, hello/0, greet_and_add_two/1]).

add(A, B) ->
	A + B.

add(A, B, C) ->
	A + B + C.

%% Shows greetings.
%% io:format/1 is the standard function used to output text.
hello() ->
	io:format("Hello, world!~n").

greet_and_add_two(X) ->
	hello(),
	add(X, 2).