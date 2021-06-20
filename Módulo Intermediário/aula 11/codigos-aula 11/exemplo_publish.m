%                UNIVERSIDADE FEDERAL DO PIAUÍ
%                    CENTRO DE TECNOLOGIA
%                  DISCENTE: MARIANA MOURA
%             CURSO DE MATLAB: DO BÁSICO AO AVANÇADO
%%
% *Aula 11: Exemplo de documento utilizando o Publish*

% 
%%
% 
% # Usar dados obtidos de uma rede MLP para aproximar a função através da
% geração de 500 pares de entrada-saída de treinamento.
%%
% $z(x,y) = (sin(x))^2*(cos(y))^2 + x*y^3$
%
% # Determinar o gráfico da função z(x,y) usando a fórmula acima e através
% da rede MLP.
% # Determinar também a curva de aprendizagem do modelo.

clc
close
clear
load parametros.mat
figure(1)
x1 = -2.5:0.01:2.5;
y1 = -2.5:0.01:2.5;
for i=1:length(x1)
    for j=1:length(y1)
        z1(i,j) = (sin(x1(i))).^2*(cos(y1(j)))^2 + x1(i)*y1(j)^3;
    end
end
surf(x1,y1,z1,'EdgeAlpha','0.1');
xlabel('x');
ylabel('y');
zlabel('z');

%% Aprendizagem
figure(2);
EQM = DADOS(:,1);
epoca = DADOS(:,2);
plot(epoca,EQM,'b','LineWidth',2);
title('Curva de Aprendizagem');
legend('Erro quadrático médio (EQM)');
xlabel('EQM');
ylabel('Número de épocas');
grid on

%% Superfície de teste
% Gerou-se a superfície de teste usando os dados obtidos da rede MLP após
% treinamento com 5000 épocas e taxa de aprendizagem de 0.5. A rede é
% formada por 10 neurônios na camada oculta e 3 neurônios na saída.

figure(3);
xteste = -2.5:0.01:2.5;
yteste = -2.5:0.01:2.5;

for i=1:length(xteste)
    xr(i) = (xteste(i) - min(xteste(:)))/(max(xteste(:)) - min(xteste(:)));
    yr(i) = (yteste(i) - min(yteste(:)))/(max(yteste(:)) - min(yteste(:)));
end

clear('y','v');
w = [bias' w];
m = [b3 m];

for j=1:length(yr)
    for i=1:length(xr)
        entrada = [1 xr(i) yr(j)];
        v = entrada*w'; % potencial de ativação
        teta = sigmf(v,[beta c]); 
        
        yd = [1 teta];
        y(i,j) = yd*m'; % potencial de ativação
        saida(i,j) = sigmf(y(i,j),[beta c]);
    end
end

for j=1:length(yr)
    for i=1:length(xr)
        zsaida(i,j) = saida(i,j)*(max(z1(i,:))-min(z1(i,:)))+ min(z1(i,:));
    end
end
surf(xteste,yteste,zsaida,'EdgeAlpha','0.1');

figure(4);
subplot(1,2,1);
surf(x1,y1,z1,'EdgeAlpha','0.1');
title('Gráfico da função dada a equação');
xlabel('x');
ylabel('y');
zlabel('z');

subplot(1,2,2);
surf(xteste,yteste,zsaida,'EdgeAlpha','0.1');
title('Gráfico da função aproximada a partir da MLP');
xlabel('x');
ylabel('y');
zlabel('z');







