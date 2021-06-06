-module(combiningDrop_ConvertLogic_using_import).

-export([height_to_mph/1]).

-import(example2_2, [fall_velocity/1]).

-import(example2_3, [mps_to_mph/1]).

height_to_mph(Meters) ->
    mps_to_mph(fall_velocity(Meters)).