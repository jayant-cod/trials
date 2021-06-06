-module(increasingList).

-export([create/1]).

% create(N) ->
%     increase([1],2,N).

% increase(List,Num,N) when Num =< N->
%     increase(List ++ [Num],Num+1,N);

% increase(List,_Num,_N) ->
%     List.

create([]) ->
    [];

create(N)when N >1 ->
    create(N-1) ++ [N];

create(1) ->
    [1].