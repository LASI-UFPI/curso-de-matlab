clc
clear
mat1 = input('Digite a primeira matriz: ');
mat2 = input('Digite a segunda matriz: ');
try 
    prod = mat1.*mat2;
catch
    mat2 = input('Digite novamente a segunda matriz: ');
    prod = mat1.*mat2;
end
disp('Resultado da multiplicação: ');
disp(prod);