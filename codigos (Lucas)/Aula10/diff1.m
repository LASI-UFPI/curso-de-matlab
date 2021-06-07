% syms x
% f = @(x) 2*x^2 + 4*x;
% diff(f,x)

% syms x;
% f = 2*x^3 + 3*x + 5; % => (2*x^3)' -> (2*3)* x^2
% diff(f,x)
% diff(f, x, 2)
% syms x
% g(x) = 2*x^3 + 3*x + 5;
% diff(g(x), x)

% 
% syms x t;
% f2 = 2*x^3 + x*t + 3*t^2 + 9;
% diff(f2, x, t)

polyder([1 -6 9])  % x^2 - 6*x + 9