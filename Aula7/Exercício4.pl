%4) Calcular a soma dos primeiros n-valores inteiros:
%             S(n) = 1 + 2 + 3 + 4 + ..... + (n − 1) + n
%             
% S(n) = 1       para n = 1
% S(n-1) + n     para n >= 2

%Caso Base: Se n = 1 a soma vai ser = 1 
soma_valores(1,1). 

%Caso recursivo: 
soma_valores(N, S):- N > 1, 
                     N1 is N - 1,
                     soma_valores(N1,Soma), 
                     S is Soma + N.  
