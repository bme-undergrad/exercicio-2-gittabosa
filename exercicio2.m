function [blendA, blendB] = exercicio2(5)

  % NG: numero do grupo

  % nao alterar: inicio
  es = 1;
  imax = 20;
  pkg load optim
  % nao alterar: fim

  %%%%%%%%%%%%%%%%%%%%%%%%%%

f = [10; 2*5];

A = [-0.3, -0.2;   
    -0.2, -0.25;
    -0.25, -0.3];

b = [-15; -10; -12];

lb = [0; 0];
ub = [20; 50];

x = linprog(c, A, b, [], [], lb, ub);

  %%%%%%%%%%%%%%%%%%%%%%%%%%

  % mantem essas duas linhas finais
  blendA = x(1);
  blendB = x(2);

  %%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
