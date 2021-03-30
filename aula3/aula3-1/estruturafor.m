vet = input('Digite um vetor: ');
for m = 1:length(vet)
    square(m) = vet(m)^(2);
    square_root(m) = vet(m)^(1/2);
    square_cube(m) = vet(m)^(1/3);
end
disp('Vetor digitado: ');
disp(vet);
disp('Vetor ao quadrado')
disp(square);
disp('Raiz do vetor: ');
disp(square_root);
disp('Raiz cúbica do vetor: ')
disp(square_cube);