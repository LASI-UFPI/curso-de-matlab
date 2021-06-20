clc; clear; close;

% num = [1 5 9 7];
% den = [1 3 2];
% [residuos, polos, direto] = residue(num, den)

residuo2 = [1; -1; 3; 4];
polos2 = [-3; 8; -2; 5];
direto2 = 0;

[num2, den2] = residue(residuo2, polos2, direto2);

printsys(num2, den2, 's')