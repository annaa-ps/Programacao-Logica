%6) Defina um predicado retiraElemento(Elem, L1, L2) que retorne a lista L2 
%sem as ocorrências do elemento (Elem) na lista L1.

%Caso Base: 
retiraElem(_,[],[]). 

%Caso Recursivo:
retiraElem(Elem,[Elem|T],L2):- retiraElem(Elem,T,L2).
retiraElem(Elem,[H|T],[H,L2]):- H \= Elem, retiraElem(Elem,T,L2). 
