-module(ignore_using_underscore).

-export([fall_velocity/2]).

% it will not give any warning as we ignoring varible using '_'
fall_velocity(_, Distance) ->
    math:sqrt(2 * 9.8 * Distance).