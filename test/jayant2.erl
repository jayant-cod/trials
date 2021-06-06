-module(jayant2).

-export([get_models/1,total_cost/1,get_price/2,buy_mobile/2,delete_data/2]).

% getting all model names
get_models(Stock) ->
    GetModel = fun(X) -> 
       Item = hd(X),
       {model,Name} = Item,
       Name
    end,
    lists:map(GetModel,Stock).




% total_cost(Stock) -> Should return the amount Store keeper paid to buy this stock

% total_cost(Stock) -> 
%     Fun = fun(X,Acc) ->
%         Acc + element(2,element(2,list_to_tuple(X))) * element(2,element(3,list_to_tuple(X))) 
%             % first element is used to get price    and     second is used to get quantity.
%     end,
%     lists:foldl(Fun,0,Stock).    

total_cost(Stock) ->
    Fun = fun(X,Acc) ->
        Acc + proplists:get_value(price,X) * proplists:get_value(instock,X)
    end,
    lists:foldl(Fun,0,Stock).


% get_price(Stock, Model) -> should return price for the model.
% E.g calling this function as get_price(Stock, “iPhone”) should return 50000

% get_price(Stock,Model) ->
%     Fun = fun(X) ->
%         Model == element(2,element(1,list_to_tuple(X)))    
%     end,
%     Item = lists:filter(Fun,Stock),
%     element(2,element(2,list_to_tuple(element(1,list_to_tuple(Item))))).

get_price(Stock,Model) ->
    Fun = fun(X) ->
        Model == proplists:get_price(price,X)    
    end,
    Item = lists:filter(Fun,Stock),
    element(2,element(2,list_to_tuple(element(1,list_to_tuple(Item))))).


% fuction to buy a stock and reduce its quantity by 1

buy_mobile(Stock,Model) ->
    Fun = fun(X) ->
        case Model == element(2,element(1,list_to_tuple(X))) of
            true ->lists:keyreplace(instock,1,X,{instock,element(2,element(3,list_to_tuple(X)))-1});
            false ->X
        end
    end,
    lists:map(Fun,Stock).    







%delete the particular model and returning remaining model list

delete_data(Stock,Model) ->
    Fun = fun(X) ->
        Model =/= element(2,element(1,list_to_tuple(X)))
    end,
    lists:filter(Fun,Stock).
