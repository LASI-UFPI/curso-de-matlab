%% Gráficos Polares
tetha = -2*pi:0.01:2*pi;
rho = sin(2*tetha).*cos(2*tetha);
polarplot(tetha,rho,'k--')

%% Outros tipos de gráficos
x = 1:7;
y = [12 7 9.4 3.47 8.91 10 12];

subplot(2,3,1)
bar(x,y)

subplot(2,3,2)
barh(x,y)

subplot(2,3,3)
compass(2,5)

subplot(2,3,4)
pie(y)

subplot(2,3,5)
stairs(x,y)

subplot(2,3,6)
stem(x,y)

%% Histograma
