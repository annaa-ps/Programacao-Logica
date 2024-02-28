%Banco De Dados
mulher(ana).
mulher(eva).
mulher(bia).
mulher(clo).
mulher(lia).
mulher(gal).

homem(ivo).
homem(noe).
homem(rai).
homem(gil).
homem(ary).

gerou(ana, eva).
gerou(ivo, eva).
gerou(eva, noe).
gerou(rai, noe). 
gerou(bia, rai).
gerou(gil, rai).
gerou(bia, clo).
gerou(gil, clo).
gerou(bia, ary).
gerou(gil, ary). 
gerou(ary, gal).
gerou(lia, gal). 

%REGRAS
feliz(X) :-homem(X), gerou(X, _);mulher(X),gerou(X, _).

casal(X,Y) :- gerou(X,Z), gerou(Y,Z).
