-module(test1).

-export([some/1]).

some(Stock) ->
    Fun = fun(X) -> lists:keyreplace( instock,1,X,{instock,10-1}) end,
    lists:map(Fun,Stock).
