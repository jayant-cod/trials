-module(exercise3_6).

-export([bump/1]).

% Given a list of integers, write a function bump(List) to bump each number in the list by 1
% Example –
% A = [1,2,3]
% bump(A) should return [2,3,4]

bump(List) ->
    Bump = fun(X) -> X+1 end,
    lists:map(Bump,List).