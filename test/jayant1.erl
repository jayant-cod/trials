-module(jayant1).

-export([find/2]).

find(Num,List) ->
    case lists:member(Num,List) of
        true -> {found,Num};
        false -> not_found
    end.
    