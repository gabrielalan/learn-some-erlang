%% Learning erlang modules
%% Module declaration
-module(useless).

%% Choose what functions will be exported
%% The notation name/2 is = function name with 2 parameters and all functions have this signature
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
	
get_list_comprehension() ->
	[X || X <- [1,2,3,4,5,6,7,8,9,10], X rem 2 =:= 0].
	
tuple_list_comprehension() ->
	RestaurantMenu = [{steak, 5.99}, {beer, 3.99}, {poutine, 3.50}, {kitten, 20.99}, {water, 0.00}].
	[{Item, Price*1.07} || {Item, Price} <- RestaurantMenu, Price >= 3, Price =< 10].