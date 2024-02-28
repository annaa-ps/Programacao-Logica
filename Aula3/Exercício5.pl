%BASE DE CONHECIMENTO
%Catálogo de Filmes ('Titulo', 'Gênero', 'Diretor', Ano, Min)
filme('Amnésia', 'Suspense', 'Nolan', 2000, 113).
filme('Babel', 'Drama', 'Inarritu', 2006, 142).
filme('Capote', 'Drama', 'Miler', 2005, 98).
filme('Casabianca', 'Romance', 'Curtiz', 1942, 102).
filme('Matriz', 'Ficção', 'Wachowsk', 1999, 136). 
filme('Robocco', 'Suspense', 'Witchoock', 1940, 130).
filme('Shrek', 'Aventura', 'Adamson', 2001, 90). 
filme('Sinais', 'Ficção', 'Shymalan', 2002, 106).
filme('Spartacus', 'Ação','Kubrik',1960, 184).
filme('Superman', 'Aventura', 'Donner', 1978, 143).
filme('Titanic', 'Romance', 'Cameron', 1997, 194).
filme('Tubarão', 'Suspense', 'Spielberg', 1975, 124).
filme('Volver', 'Drama', 'Almodóvar', 2006, 121). 

%REGRAS

diretor_filme(Filme, Diretor):-filme(Filme, _, Diretor, _, _).

filmes_suspense(Filme, Genero):-filme(Filme,Genero,_,_,_), Genero == 'Suspense'.

filmes_donner(Filme, Diretor):-filme(Filme,_,Diretor,_,_), Diretor == 'Donner'. 

ano_sinais(Filme, Ano):-filme(Filme,_,_,Ano,_), Filme == 'Sinais'. 

filmes_inferior100(Filme, Min):-filme(Filme,_,_,_,Min), Min <100.

filmes_lançados00a05(Filme, Ano):-filme(Filme,_,_,Ano,_), Ano >= 2000, Ano=<2005.

classico(Filme, Ano):-filme(Filme,_,_,Ano,_), Ano<1980.

genero(Filme,Genero):-filme(Filme,Genero,_,_,_). 

classico_suspense(Titulo, Ano):-classico(Titulo, Ano),genero(Titulo, 'Suspense').
