-module(jayant3).

-export([count/1]).

count(String) ->
    List = string:tokens(String," "),
    count(List,0,[],true).

count([],_,_,true) -> done;
count(List,Num,Dlist,true) -> 
    [H|T] = List,

    case lists:member(H,Dlist) of
        true -> nothing;
        false ->count(H,List,Num)
    end,
    % io:format("~p ~n",[Dlist]),
    count(T,0,lists:append([H],Dlist),true).

count(H,[H1|T1],Num) ->
    
    case H == H1 of
            true -> NewNum = Num + 1;
           false -> NewNum = Num 
    end,
    count(H,T1,NewNum);

count(H,[],Num) ->
    io:format("~p : ~p ~n",[H,Num]).
