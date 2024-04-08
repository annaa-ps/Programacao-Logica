%2) Defina o predicado tam(L,N), que determina o número de itens N existente 
%numa lista L. Por exemplo, tam([a,b,c],N), resulta em N=3.

%Caso Base: Se e a lista for vazia o tamanho é ZERO
tam([], 0). 

%Caso Recursivo:
tam([_|T], Tam):- tam(T,Tam1), Tam is Tam1 + 1. 
