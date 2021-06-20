% Obter zeros, polos e ganho de uma função de transferência

clc; clear; 
num = [4 16 12];
den = [1 12 44 48 0];
[zeros, polos, ganho]= tf2zp(num, den)


%% Obter função de transferência a partir de zeros, polos e ganho
clear
zeros = [-1; -4];
polos =[2; 3; 1 + i; 1 - i];
ganho = 1;
[num, den]= zp2tf(zeros, polos, ganho);
num
den
printsys(num, den, 'm')