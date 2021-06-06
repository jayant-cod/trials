-module(fall_velocity).

-export([    
    fall_velocity/2
    ]).

fall_velocity(earth ,Distance) ->
    math:sqrt(2 * 9.8 * Distance).