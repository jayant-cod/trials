-module(count_down).

-export([countdown/1]).

countdown(From) when From > 0 ->
    io:format("~w ", [From]),
    countdown(From-1);

countdown(From) ->
    io:format("blastoff!~n").