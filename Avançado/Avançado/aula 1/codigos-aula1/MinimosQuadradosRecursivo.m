%############ MÉTODO DOS MÍNIMOS QUADRADOS RECURSIVO ############
% 
% FUNÇÃO REAL
%
%             0.03518z + 0.1023
%     Gz =  ----------------------
%            z^2 + 0.9045 + 0.4520
%
% Ref.: Identificação de Sistemas, Coelho.
%%
clc
clear all
close all
K = 0.9380;
num = [0.0375 0.1091];
den = [1 0.9045 0.4520]; 

Q_amostras = 600;
ref=ones(Q_amostras,1);
y=zeros(Q_amostras,1);
u=zeros(Q_amostras,1);

for k = 1:Q_amostras
    u(k) = 1 + 0.3*rand(1,1); % ruído branco aplicado ao sistema para a identificação
end
e = u*0.01;

teta = [0;0;0;0];
for t = 1:4
y(t) = 0; erro(t) = 0; 
a1(t) = teta(1); a2(t) = teta(2);
b0(t) = teta(3); b1(t) = teta(4);
yest(t) = 0;
end
% Estimador dos Mínimos Quadrado Recursivo

%  Matriz de covariância: condições iniciais
p = 1000*eye(4,4); % Matriz identidade vezes 100

fi = [];
b3 = 0.1023;
for j = 3:Q_amostras
    y(j)=-0.9045*y(j-1)-0.4520*y(j-2)+0.03518*u(j-1)+b3*u(j-2)+e(j);
    
    fi = [-y(j-1);-y(j-2);u(j-1);u(j-2)];
    erro(j) = y(j)-teta'*fi;
    % Vetor de ganho
    k = p*fi/(1+fi'*p*fi);
    % Calcular o novo vetor de estimação de parâmetros
    teta = teta+k*erro(j);
    % Atualizar a matriz de covariância
    p = (p-k*fi'*p);
    % Armazenar parâmetros === coefientes da função
    a1(j) = teta(1);
    a2(j) = teta(2);
    b0(j) = teta(3);
    b1(j) = teta(4);
end;

for k=1:3
    yest(k)=0;
end;

a1 = teta(1)
a2 = teta(2)
b1 = teta(3)
b2 = teta(4)
  
for k = 3:Q_amostras
    
    if k<=100 %patamares
        ref(k) = 2;
    end
    if k>100 && k<=200
        ref(k) = 3;
    end
    if k>200 && k<=300
        ref(k) = 2.5;
    end
    if k>300 && k<=400
        ref(k) = 1.5;
    end

    y(k)=-0.9045*y(k-1)-0.4520*y(k-2)+0.03518*ref(k-1)+b3*ref(k-2)+ e(k);
    yest(k)=-a1*yest(k-1)-a2*yest(k-2)+b1*ref(k-1)+b2*ref(k-2);
end
Tempo = 1:Q_amostras;
figure
plot(Tempo,y,'k','LineWidth',2);
hold on
plot(Tempo,yest,'r','LineWidth',2);
title('Comparação das respostas real e estimada do sistema');
grid minor
grid on







