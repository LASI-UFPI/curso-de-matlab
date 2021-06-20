
%% Especificações da planta
num =[1];
den=[10 1 0];
num1 = [9];
den1 = [1 3 9];
G = tf(num,den)
G1 = tf(num1,den1)
roots(den)
nyquist(G1)
%% Especificações de desempenho
Ts = 1;
psi = 0.5;
w0 = 1;
%% 
rlocus(num,den);
%% Resposta ao degrau
figure(1)
step(G);
figure(2)
step(G1);



