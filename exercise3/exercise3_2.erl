-module(exercise3_2).

-export([list/2]).

% Write a function that returns list of integers between M and N. Assume M <= N.

list(M,N) when M > N ->
    io:format("list is not possible.~n");

list(M,N) ->
    lists:seq(M,N).