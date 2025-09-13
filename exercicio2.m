function [blendA, blendB] = exercicio2(NG)

  % NG: numero do grupo

  % nao alterar: inicio
  es = 1;
  imax = 20;
  pkg load optim
  % nao alterar: fim

  %%%%%%%%%%%%%%%%%%%%%%%%%%

  f = [10, 2*NG];   % custo de blend A e blend B

  A = [-0.3, -0.2;   % polietileno >= 15
       -0.2, -0.25;  % PLA >= 10
       -0.25, -0.3]; % polipropileno >= 12

  b = [-15; -10; -12];

  lb = [0; 0];
  ub = [20; 50];

  [x, fval, info] = linprog(c, A, b, [], [], lb, ub);

  %%%%%%%%%%%%%%%%%%%%%%%%%%

  % mantem essas duas linhas finais
  blendA = x(1);
  blendB = x(2);

  %%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
