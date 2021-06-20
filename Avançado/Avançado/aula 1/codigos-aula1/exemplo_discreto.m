%% Controlador discreto aplicado a um sistema 

clc; close; clear

T = 1; 
num = [1];
den = [10 1 0];
G = tf(num, den);
Gz = c2d(G,T,'zoh');

for k = 1:3
    r(k) = 0; y(k) = 0;
    e(k) = 0; y1(k) = 0; Y(k) = 0;
end

amostras = 100;
for k=4:amostras
    r(k) = 1;
    y(k) = 2.273*y(k-1) - 1.606*y(k-2) + 0.3329*y(k-3)+ 0.3679*e(k-1) - 0.06863*e(k-2)- 0.2391*e(k-3);
    e(k) = r(k) - y(k);
    t(k) = k*T;
end
plot(t,r,'r');
hold on
plot(t,y,'k');
grid on


%% Função controlada de malha aberta
num1 = [10 1];
den1 = [1 1]
Gc = tf(num1,den1);
G*Gc
gcz = c2d(G*Gc,T,'zoh')
nyquist(G*Gc)

