% Given a word and a list of possible anagrams, select the correct sublist.
% Given &quot;listen&quot; and a list of candidates like &quot;enlists&quot; &quot;google&quot; &quot;inlets&quot; &quot;banana&quot; the
% program should return a list containing &quot;inlets&quot;.

-module(exercise3_8).

-export([anagrams/2]).

anagrams(Word,List) ->
     SortFun = fun(X) -> lists:sort(X) == lists:sort(Word) end,
     lists:filter(SortFun,List).
    
