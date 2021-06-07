% Métodos para usar Polinômios

%% Poly e relacionados

% Para o polinômio y = x^2 - 6*x + 9 = (x-3)*(x-3)
% Extraímos seus coeficientes:
% p = [1 -6 9];
% % E obtemos as raízes com roots:
% x12 = roots(p) 
% % E para o caso contrário
% Temos as raízes x1 = x2 = 3
% r = [3 3];
% % E podemos obter os coeficientes do polinômio
% y = poly(r)

%% Função Anônima

% f =@(x) => Temos uma variável f que recebe a resposta
% de uma função que requer o parâmetro x.

% % f =@(x) ((x)^2 + 2);
% f =@(x) (x)^2 - 6*x + 9;
% % f(3)      % f1(x=3) = 9 + 2 = 11
            % f2(x=3) = 9 - 18 + 9 = 0

%% Variável simbólica (syms)
% 
syms x
% k = (x+2)*(x+2);  % Exemplo de aplicação: Achar coeficientes
% % k(2)  % Erro
% 
% m(x) = (x+2)*(x+2);  % x^2 + 4x + 4
% m(2)

% Logo, o ideal pode ser multiplicar vários polinômios
% usando syms e depois definir um valor numérico para a variável.

% Aplicação: encontrar coeficientes.
n = (x+3)^3;
k = (x+2)*(x+2);
g = k*n;
coeffs(g)  % Da ordem zero até a maior ordem



