-module(fall_velocity).

-export([velocity/1]).

velocity(Distance) ->
    Fall_velocity = math:sqrt(2* 9.8 * Distance),
    Fall_velocity.