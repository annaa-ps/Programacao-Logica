%5) Defina um predicado retornaElemento(N, Elem, L) que retorna o Elememento 
%(Elem) da posição N da lista L.


%Caso Base: Se e a lista for vazia não possui elemento em determinada posição
posicao(1,[X|_], X). 

%Caso Recursivo:
posicao(N,[_|T],X):- N>0, 
                     N1 is N-1, 
                     posicao(N1,T,X).
