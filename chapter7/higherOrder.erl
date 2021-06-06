-module(higherOrder).

-export([tripple/2]).

tripple(Value,Function) -> 3 * Function(Value).