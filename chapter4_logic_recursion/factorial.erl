-module(factorial).

-export([fact/1]).

fact(N)
    when N > 1 ->
        N * fact(N-1);

fact(N) when N =< 1 ->
    1.
