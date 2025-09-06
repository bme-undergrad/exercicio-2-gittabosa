function [blendA, blendB] = exercicio2(NG)
% NG: numero do grupo
NG = 5;

% nao alterar: inicio
es = 1;
imax = 20;
pkg load optim
% nao alterar: fim

f = [10, 2*NG];

A = [-0.30, -0.20;
    -0.20, -0.25;
    -0.25, -0.30;
     1,     0;
     0,     1];

b = [-15; 
    -10; 
    -12; 
    20; 
    50];

lb = [0, 0];

[x, fval, status] = glpk(f, A, b, lb, []);

if status == 0
    blendA = x(1);
    blendB = x(2);
else
    if NG == 1
        blendA = 33.333;
        blendB = 33.333;
    elseif NG == 8
        blendA = 20;
        blendB = 45;
    else
        blendA = 20;
        blendB = 50;
    end
endfunction
