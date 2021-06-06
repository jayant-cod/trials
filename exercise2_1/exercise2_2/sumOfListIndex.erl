-module(sumOfListIndex).

-export([addition/1]).

addition([]) -> 0;

addition(L) -> maths(L,0).


maths([],Product) -> Product;

maths([Heads | Tails],Product) ->
    maths(Tails,Product + Heads).


