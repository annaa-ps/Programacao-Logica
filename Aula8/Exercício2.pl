%2- Crie uma regra recursiva e outra iterativa com um parâmetro que é um número 
%inteiro. A regra deve imprimir os valores de zero até o número informado. 
%Por exemplo:
%? - imprimeAte(3).
%0 1 2 3

%REGRA RECURSIVA: 
%Caso Base: Quando o número é zero, não imprime nada
imprimeAte(0):- write(0),
                write(' '),!. 
%Caso Recursivo: 
imprimeAte(N):- N > 0,
                N1 is N - 1,
                imprimeAte(N1),
                write(N), 
                write(' ').

%REGRA INTERATIVA
