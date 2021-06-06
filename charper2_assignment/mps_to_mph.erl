-module(mps_to_mph).

-export([convert/1]).

convert(Mps) ->
    Mps_to_mph = 2.23693629 * Mps,
    Mps_to_mph.
