%% Funções
x = 0:5;
y1 = exp(x);
y2 = 10*x + 8;

%% Axis e Hold
plot(x,y1,'r-.'); hold on;
plot(x,y2,'g');
title('Aula 9');
xlabel('X');
ylabel('Y');
legend('y1','y2');
axis([0 3 0 100])

%% Figure
figure(1)
plot(x,y1,'r-.');
title('Y1');
xlabel('X');
ylabel('Y');

figure(2)
plot(x,y2,'g');
title('Y2');
xlabel('X');
ylabel('Y');

%% Subplot
subplot(2,1,1)
plot(x,y1,'r-.');
title('Y1');
xlabel('X');
ylabel('Y');

subplot(2,1,2)
plot(x,y2,'g');
title('Y2');
xlabel('X');
ylabel('Y');