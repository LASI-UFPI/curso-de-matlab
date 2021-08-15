clear; close all; clc;
R = input('Resistência: ');
C = input('Capacitância: ');
Vo = input('Tensão incial: ');
diagrama = sim("Circuito_RC");
plot(diagrama.tensao.Data)
title("Resposta natural do circuito RC");
xlabel("t");
ylabel("v(t)");