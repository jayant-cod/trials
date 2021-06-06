-module(function).

-export([
        forEach/1,
        map/1,
        filter/1,
        sequence/0,
        foldl/1,
        foldr/1
    ]).

forEach(List) ->
    MyFunction = fun(X) -> io:format("~p ",[X]) end,  %[1,2,3,4] => 1 2 3 4 ok 
    lists:foreach(MyFunction,List).  %it takes each element not returning any


map(List) ->
    Multiply = fun(X) -> X * X end,   %[1,2,3,4] => [1,4,9,16]
    lists:map(Multiply,List).        %this function can change each element and return it to its list.

filter(List) -> 
    Even = fun(X) ->                    %[1,2,3,4] => [2,4]
                case X rem 2 of
                    0 -> true;                 
                    1 -> false
                end
           end,
    _Odd = fun(X) ->                    %[1,2,3,4] => [1,3]
                case X rem 2 of
                    0 -> false;
                    1 -> true
                end
           end,
           
    lists:filter(Even,List).    % it will another list if element condition is true.

sequence() ->
    lists:seq(1,10,1),  % [1,2,3,4,5,6,7,8,9,10]
    lists:seq(1,10,2),  % [1,3,5,7,9]
    lists:seq(6,13,1),  % [6,7,8,9,10,11,12,13]
    lists:seq(0,10,2).  % [0,2,4,8,10]

foldl(List) ->
    Multiply = fun(Product,Acc) -> Product * Acc end,  % here 1st parameter is 2nd parameter
    Product = 1,                                        % here 'Acc' is each element
                                                        % [1,2,3,4,5] => 120
    lists:foldl(Multiply,Product,List).   % it will have three parameters

% foldl = traverse the list from left to right
        
foldr(List) ->
    Multiply = fun(Product,Acc) -> Product * Acc end,  % here 1st parameter is 2nd parameter
    Product = 1,                                        % here 'Acc' is each element
                                                        % [1,2,3,4,5] => 120
    lists:foldr(Multiply,Product,List).   % it will have three parameters can get final value(Product) return

% foldr = traverse the list from right to left
