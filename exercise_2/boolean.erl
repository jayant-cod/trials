-module(boolean).

-export([b_not/1,b_and/2,b_or/2,b_nand/2]).


% not gate implementation

b_not(Input) ->
    case Input of
        false -> true;
        true -> false
    end.

% and gate implementation

b_and(Input1,Input2) ->
    case Input1 of
        true -> case Input2 of
                    true-> true;
                    false -> false
                end;
        false ->  false
    end.

% or gate implementation
b_or(Input1,Input2) ->
    case Input1 of
        true -> case Input2 of
                    true-> true;
                    false -> true
                end;
        false -> case Input2 of
                    true -> true;
                    false -> false
                end
    end.


% nand gate implementation
b_nand(Input1,Input2) ->
    And = b_and(Input1,Input2),
    Nand = b_not(And),
    Nand.
