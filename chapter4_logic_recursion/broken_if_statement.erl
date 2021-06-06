-module(broken_if_statement).

-export([bad_if/1]).

% it is wrong to set variable in if statement
% because it may or may assign value
% and we try to get its value even it may not assigned.

bad_if(Test_val) ->
    if
        Test_val < 0 -> X = 1;
        Test_val >= 0 -> Y = 2
    end,
    X+Y.