%Fatos
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

%regras
pai(X,Y):-homem(X), gerou(X,Y). 
mae(X,Y):-mulher(X), gerou(X,Y).
irmao(X,Y):-homem(X), pai(Z,X), pai(Z,Y).
irma(X,Y):-mulher(X), pai(Z,X), pai(Z,Y). 
tio(X,Y):-homem(X), irmao(X,Z), pai(Z,Y).
tio(X,Y):-homem(X), irmao(X,Z), mae(Z,Y). 
tia(X,Y):-mulher(X), irma(X,Z), pai(Z,Y).
tia(X,Y):-mulher(X), irma(X,Z), mae(Z,Y).
avô(X,Y):-homem(X), pai(X,Z), pai(Z,Y). 
avô(X,Y):-homem(X), pai(X,Z), mae(Z,Y).
avó(X,Y):-mulher(X), mae(X,Z), mae(Z,Y). 
avó(X,Y):-mulher(X), mae(X,Z), pai(Z,Y). 
