-module(getPlanetName).

-export([line/0]).

line() ->
Planemo = get_planemo(),
Distance = get_distance(),
fall_velocity:fall_velocity({Planemo, Distance}).

get_planemo() ->
    io:format("Which planemo are you on?~n"),
    io:format(" 1. Earth ~n"),
    io:format(" 2. Earth's Moon~n"),
    io:format(" 3. Mars~n"),
    Answer = io:get_line("Which? > "), % getting index value of with 1 here means first character
    Value = hd(Answer),
    char_to_planemo(Value).

char_to_planemo(Char) ->
    if
        [Char] == "1" -> earth; % it converts string to int
        Char == $2 -> moon;  % $2 is also used to denote direct int
        Char == 51 -> mars   % 51 is here considered as ASCII code
    end.

get_distance() ->
    Input = io:get_line("How far? (meters) > "),
    Value = string:strip(Input, right, $\n),
    {Distance, _} = string:to_integer(Value),
    Distance.