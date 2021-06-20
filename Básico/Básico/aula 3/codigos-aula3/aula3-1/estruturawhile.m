clc
clear
num = input('Digite um valor: ');
aux = 1;

while(num > 1)
    aux = aux*num;
    num = num - 1;
end
disp(['n! = ' int2str(aux)]);