-module(math_function).

-export([sin/0,cos/0,pow/0,pi/0,insideMath/0]).

sin() ->
    io:fwrite("sin 0 : "),
    Sin0 = math:sin(0),
    round(Sin0).

cos() ->
    io:fwrite("cos 0 : "),
    Cos0 = math:cos(0),
    round(Cos0).

pow() ->
    io:fwrite("pow 4 to base 2 : "),
    Pow = math:pow(2,4),
    round(Pow).
    
pi() ->
    io:fwrite("value of pi : "),
    Pi = math:pi(),
    Pi.    

insideMath() ->
    io:fwrite("math function inside math function : "),
    Math = math:sin(math:pi()),
    Math.