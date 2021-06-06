-module(example2_4).
-export([height_to_mph/1]).

% Module for combining drop and convert logic

height_to_mph(Meters) ->
    example2_3:mps_to_mph(example2_2:fall_velocity(Meters)).