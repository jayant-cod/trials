-module(exercise3_3).

-export([filter/2]).

% Write a function that, given a list of integers and an integer, will return all integers smaller than or
% equal to that integer.
% Example:
% filter([1,2,3,4,5], 3) ⇒ [1,2,3].

filter(List,N)->
    MyFunction = fun(X) -> X =< N end,    
    lists:filter(MyFunction,List).
