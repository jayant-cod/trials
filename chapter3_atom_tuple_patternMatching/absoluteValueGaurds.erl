-module(absoluteValueGaurds).

-export([absolute_value/1]).

% to make negative number into positive
absolute_value(Number) when Number < 0 -> -Number;

absolute_value(Number) when Number == 0 -> 0;

absolute_value(Number) when Number > 0 -> Number.