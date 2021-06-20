clc
clear
disp('ax^2 + bx + c = 0')
a =  input('Digite o coeficiente A: ');
b = input('Digite o coeficiente B: ');
c = input('Digite o coeficiente C: ');
delta = b^2 - 4*a*c;
if (delta < 0)
    disp('A equação possui duas raízes complexas distintas!');
    disp('Valor de delta obtido: ');
    disp(delta);
elseif (delta > 0)
    disp('A equação possui duas raízes reais distintas!')
    disp('Valor de delta obtido: ');
    disp(delta);
else
    disp('A equação possui apenas uma raíz!');
    disp('Valor de delta obtido: ');
    disp(delta);
end