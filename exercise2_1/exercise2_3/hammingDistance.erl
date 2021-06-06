-module(hammingDistance).

-export([distance/2]).

distance(Strand1,Strand2) ->
    distance(Strand1,Strand2,0).

distance([],[],Diff) ->
    Diff;

distance([Head | Tail1],[Head | Tail2],Diff) ->
    distance(Tail1,Tail2,Diff);

distance([_Head1 | Tail1],[_Head2 | Tail2],Diff) ->
    distance(Tail1,Tail2,Diff+1).



