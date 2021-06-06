-module(count_up).

-export([count_up/1]).

count_up(Limit) ->
    count(1,Limit).

count(Int,Limit)
  when Int < (Limit + 1) ->
    io:format("~w ",[Int]),
    count(Int+1,Limit);

count(Int,Limit) ->
    io:format("~nfinished~n").


