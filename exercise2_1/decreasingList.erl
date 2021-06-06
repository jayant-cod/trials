-module(decreasingList).

-export([reverse_create/1]).

reverse_create(N) ->
    decrease([N],N-1).

decrease(List,N) when N > 0 ->
    decrease(List ++ [N],N-1);

decrease(List,_N) ->
    List.

lists:reverse