-module(exercise3_5).

-export([list/1]).

% Given a list having mixed data types of Integers, Atoms, Float – write a function to return a tuple of 3
% lists, each having single datatype.
% Example –
% Give A = [1, 4, test, ok, how, 3.14, 4.5, 7]
% part(A) should return { [1,4,7], [test, ok, how], [3.14, 4.5]}

list(List) ->
    IsInteger = fun(X) -> is_integer(X) end,    
    IsFloat = fun(X) -> is_float(X) end,
    IsAtom = fun(X) -> is_atom(X) end,
    
    Int = lists:filter(IsInteger,List),
    Float = lists:filter(IsFloat,List),
    Atom = lists:filter(IsAtom,List),
    {Int,Float,Atom}.
     