-module(check_bounds).

-export([check/0]).

check() ->
    A = 1,
    B = A,
    io:fwrite("~w\n",[B]).
    % A = 2.  cannot possible to assign another value.
    % A == B.  (equals equalsTo)// true
    % A =/= B.  (not equalsTo)// false
    % b().  // to check/see bounded variables
    % f(). // to clear all bounded variable data
     