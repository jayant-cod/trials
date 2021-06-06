-module(example2_3).

-export([mps_to_mph/1, mps_to_kph/1]).


% module for converting mps to mph and mps to kph

mps_to_mph(Mps) ->
    2.23693629 * Mps.

mps_to_kph(Mps) ->
    3.6 * Mps.