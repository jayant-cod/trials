-module(using_gaurds).

-export([fall_velocity/2]).

% when here is like if condition where we are stating that
    % their should not be negative distance

% using gaurds for making function work normally.

fall_velocity(earth, Distance)
  when Distance >= 0 ->
    math:sqrt(2 * 9.8 * Distance);

fall_velocity(moon, Distance)
  when Distance >= 0 ->
    math:sqrt(2 * 1.6 * Distance);

fall_velocity(mars, Distance)
  when Distance >= 0 ->
    math:sqrt(2 * 3.71 * Distance).