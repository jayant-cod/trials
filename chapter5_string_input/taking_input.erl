-module(taking_input).

-export([input/0]).

input() ->
    Input = io:read("Tell me the value : "),
    Input.