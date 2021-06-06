-module(area).

-export([area/1]).


area({square,Side}) -> Side * Side;
area({circle,Radius}) -> Radius * Radius * math:pi().


