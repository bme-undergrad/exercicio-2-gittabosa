function [blendA, blendB] = exercicio2(NG)

% NG: numero do grupo
NG = 5;

% nao alterar: inicio
es = 1;
imax = 20;
pkg load optim
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%
        
 f = [10, 2*NG];
    
    A = [0.30, 0.20;
    0.20, 0.25;
    0.25, 0.30];   
    
 A = -A;  % Multiplicando por -1 para converter ≥ para ≤
 b = [-15; -10; -12];  % Lado direito já negativo
    
ub = [20, 50];
lb = [0, 0];
    
op = optimset('Display', 'off');
x = linprog(f, A, b, [], [], lb, ub, [], options);


 % mantenha essas duas linhas finais
blendA = x(1);
blendB = x(2);

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
