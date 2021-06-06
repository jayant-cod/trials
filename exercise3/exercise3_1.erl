-module(exercise3_1).

-export([sum/2]).

% Write a function sum/2 which, given two integers N and M, where N =&lt; M, will return the sum of the
% interval between N and M. If N &gt; M, give an appropriate error.
% Example:
% sum(1,3) ⇒ 6. sum(6,6) ⇒ 6.

sum(N,M) when N > M ->
    io:format("Sum cannot be possible.~n");

sum(N,M)->
    List = lists:seq(N,M),
    lists:sum(List).   