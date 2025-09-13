function [blendA, blendB] = exercicio2(NG)

  % NG: numero do grupo

  % nao alterar: inicio
  es = 1;
  imax = 20;
  pkg load optim
  % nao alterar: fim

  %%%%%%%%%%%%%%%%%%%%%%%%%%

NG = 5;
custos = [10, 2*NG];   % custo do blendA e blendB

A = [-0.3, -0.2;   % polietileno
       -0.2, -0.25;  % PLA
       -0.25, -0.3]; % polipropileno

b = [-15; -10; -12];

lb = [0; 0];
ub = [20; 50];

[x, fval, info] = glpk(c, A, b, lb, ub, "UUU", "CCC");

  %%%%%%%%%%%%%%%%%%%%%%%%%%

  % mantem essas duas linhas finais
  blendA = x(1);
  blendB = x(2);

  %%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
