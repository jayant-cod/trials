-module(example2_2).

-export([fall_velocity/1]).

% Module for calculating fall velocities

fall_velocity(Distance) ->
    math:sqrt(2 * 9.8 * Distance).