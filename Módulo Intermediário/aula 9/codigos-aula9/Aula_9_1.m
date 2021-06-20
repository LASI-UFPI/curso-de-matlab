%% Plot
x = -10:0.1:10;
y = x.^2 - 5.*x + 8;
plot(x,y,'k-.')
title('Aula 1');
xlabel('X');
ylabel('Y');
grid on;
txt = 'ponto';
text(0,8,txt);
%% Fplot
fplot(@(t) exp(t),[0 5])

%% Escala Logarítmica
x = -10:0.1:10;
y = x.^2 - 5.*x + 8;
loglog(x,y)
