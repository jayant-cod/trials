-module(case_statement).

-export([fall_velocity/1]).

fall_velocity({Planet,Distance}) -> switch(Planet,Distance).

switch(Planet,Distance) when Distance >= 0 ->
case Planet of
        earth -> math:sqrt(2 * 9.8 * Distance);
        mars -> math:sqrt(2 * 3.71 * Distance);
        moon -> math:sqrt(2 * 1.6 * Distance)
    end.
