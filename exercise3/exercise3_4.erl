-module(exercise3_4).

-export([concatenate/1]).

% Write a function that, given a list of lists, will concatenate them.
% Example:
% concatenate([[1,2,3], [], [4, five]]) ⇒ [1,2,3,4,five].

concatenate(List) ->
    lists:flatten(List).

% ------or------

% concatenate(List) ->
%     [H|T] = List,
%     concatenate(H,T).
                        
% concatenate(H,[]) ->
%     H;

% concatenate(H,T) ->
%     [H1 | T1] = T,
%     NewH = H ++ H1,
%     concatenate(NewH,T1).
