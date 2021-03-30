clc
clear
disp('CADASTRO DE INFORMAÇÕES');
nome = input('Digite seu nome: ','s');
idade = input('Digite sua idade: ');
curso = input('Digite seu curso: ','s');
resposta = input('Deseja imprimir informações cadastradas? Digite SIM ou NÃO.\n','s');
S = lower(resposta);
switch (S)
    case {'s','si','sim'}
        fprintf('Nome: %s\n',nome);
        fprintf('Idade: %d\n',idade);
        fprintf('Curso: %s\n',curso);
    case {'n','na','nao','nã','não'}
        fprintf('Seus dados foram cadastrados com sucesso!\n');
    otherwise
        fprintf('Falha!\n');
end    