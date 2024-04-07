%5) Crie um programa em Prolog que calcula a potência de um número de forma 
%recursiva que siga o seguinte protótipo: pot(Base,Expoente,Potência)

%Caso Base: Se o expoente for 0, o resultado é 1
pot(_,0,1). 

%Caso Recursivo:
pot(Base, Expoente, Potencia):- Expoente > 0,
                             NovoE is Expoente - 1,
                             pot(Base,NovoE, P1),
                             Potencia is Base*P1. 
