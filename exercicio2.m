function [blendA, blendB] = exercicio2(NG)

NG = 4; % NG = número do grupo

f = [10, 2*NG]';


x0 = [1,1]';


A = [-0.30, -0.20;
    -0.20, -0.25;
    -0.25, -0.30];
b = [-15;
    -10;
    -12];

Aeq = [];
beq = [];

ub = [20; 50];
lb = [0; 0];

x = linprog(f,A,b,Aeq,beq,lb,ub);
x = x'; 

endfunction
