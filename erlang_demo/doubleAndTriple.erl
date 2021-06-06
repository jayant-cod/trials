-module(doubleAndTriple).

-export([double/1,triple/1,square/1]).

%  double the given value
double(N) ->
    2 * N.

% triple the given value
triple(N) ->
    3 * N.

% square of the given value
square(N) ->
    N * N.

% 'n' types