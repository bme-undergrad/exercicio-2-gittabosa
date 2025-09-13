function [blendA, blendB] = exercicio2(NG)

  % NG: numero do grupo

  % nao alterar: inicio
  es = 1;
  imax = 20;
  pkg load optim
  % nao alterar: fim

  %%%%%%%%%%%%%%%%%%%%%%%%%%

  % Custos (minimizar custo total)
  c = [10; 2*NG];   % <- vetor coluna

  % Restricoes do tipo A*x <= b
  A = [-0.3, -0.2;   % polietileno >= 15
       -0.2, -0.25;  % PLA >= 10
       -0.25, -0.3]; % polipropileno >= 12

  b = [-15; 
      -10; 
      -12];

  % Limites das variáveis
  lb = [0; 0];
  ub = [20; 50];

  % resolve o problema de PL
  [x, fval, info] = linprog(c, A, b, [], [], lb, ub);

  %%%%%%%%%%%%%%%%%%%%%%%%%%

  % mantem essas duas linhas finais
  blendA = x(1);
  blendB = x(2);

  %%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
