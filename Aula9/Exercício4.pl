%4) Defina o predicado max(L,M) que determina o item máximo M na lista L. 
%Por exemplo, max[4,9,1],M) resulta em M=9.

%Caso Base: Se e a lista for vazia o Max é ZERO
max([], 0). 

%Caso Recursivo:
max([H|T],M):-max(T,M1),(H > M1->M = H; M = M1). 
