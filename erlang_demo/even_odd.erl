-module(even_odd).

-export([main/0]).

main() ->
    even_odd(5).

even_odd(N) ->
    Num = N rem 2,
    case Num of
        0 -> even;
        1 -> odd
    end.