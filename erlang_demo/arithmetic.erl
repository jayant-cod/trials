-module(arithmetic).
-export([arithmetic_function/0,addition/2,substraction/2,multiplication/2,
    int_division/2,float_division/2 ,modulus/2]).

% addition(a,b) ->
addition(A , B) ->
    % io:fwrite("addition : ~w",A + B). % will give error
    io:fwrite("addition : ~w\n",[A + B]). 
    % A+B.

substraction(A , B) ->
    io:fwrite("substraction : ~w\n",[A - B]).      

multiplication(A , B) ->
    io:fwrite("multiplication : ~w\n",[A * B]).      

int_division(A , B) ->
    io:fwrite("integer division : ~w\n",[A div B]).      

float_division(A , B) ->
    io:fwrite("float division : ~w\n",[A / B]).      

modulus(A , B) ->
    io:fwrite("modulus : ~w\n",[A rem B]).      

arithmetic_function() ->
    io:fwrite("hello !!!\n"),
    % "It's working",
    % 10+5,
    addition(4,5),
    substraction(4,5),
    multiplication(4,5),
    int_division(4,5),
    float_division(4,5),
    modulus(4,5).

    
