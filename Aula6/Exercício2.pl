%filme(Título, Gênero, Ano, Duração)
filme('Uma linda mulher', romance, 1990, 119).
filme('Sexto sentido', suspense, 2001, 108).
filme('A cor púrpura', drama, 1985, 152).
filme('Copacabana', comédia, 2001, 92).
filme('E o vento levou', drama, 1939, 233).
filme('Carrington', romance, 1995, 130).

%Regras:
lançados_d1980(A,F):-filme(F,_,A,_),
                     A > 1980. 

duração_entre(F):-filme(F,_,_,T),
                  T >= 100,
                  T =< 140. 

filmes_romance(F):-filme(F,G,_,_),
                   G == 'romance'. 

filmes_locadora(F):-filme(F,_,_,_). 
