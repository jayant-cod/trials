-module(inputFromUser).

-export([refer/0]).

refer() ->
    A = io:get_line("tell us the first input :"),
    io:fwrite("input is : ~w",A).