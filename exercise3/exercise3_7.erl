% Given a list containing words as strings, write a function to return a complete sentence.
% Example
% A = [“A”, “quick”, “brown”, “fox”, “jumps”, “over”, “a”, “lazy”, “dog”]
% sentence(A) =&gt; “A quick brown fox jumps over a lazy dog”
% Hint: Use lists:foldl

-module(exercise3_7).

-export([sentence/1]).

sentence(List) ->
    Sentence = fun(X,Acc) -> Acc++" "++ X end,     % "A " ++ "quick" ++ " "
    lists:foldl(Sentence,"",List).

 