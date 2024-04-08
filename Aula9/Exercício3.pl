%3) Defina o predicado soma(L,S) que calcula a soma S dos itens da lista L. 
%Por exemplo, soma([4,9,1],S) resulta em S=14.

%Caso Base: Se e a lista for vazia a soma é ZERO
soma([], 0). 

%Caso Recursivo:
soma([H|T], Soma):- soma(T, Soma1), Soma is H + Soma1. 
