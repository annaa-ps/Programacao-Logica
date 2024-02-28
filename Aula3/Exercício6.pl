%BASE DE CONHECIMENTO
%artista(Cantor, Musica, Album, Ano de Lançamento, País)
artista('Carol Biazin', 'Bacardi', 'Reversa', 2023, 'BR').
artista('Beyonce', 'ALIEN SUPERSTAR', 'RENAISSANCE', 2022,'USA').
artista('Carol Biazin', 'Ex não ama', 'Reversa', 2023,'BR').
artista('Carol Biazin', 'Menta com chá', 'Reversa', 2023,'BR').
artista('Beyonce', 'ENERGY', 'RENAISSANCE', 2022,'USA').
artista('Beyonce', 'BREAK MY SOUL', 'RENAISSANCE', 2022,'USA').
artista('Beyonce', 'All Night', 'LEMONADE', 2016,'USA').
artista('Beyonce', 'Hold Up', 'LEMONADE', 2016,'USA').
artista('Beyonce', 'Sorry', 'LEMONADE', 2016,'USA').
artista('Beyonce', 'Formation', 'LEMONADE', 2016,'USA').
artista('Jão', 'A Última Noite', 'ANTI-HERÓI', 2019,'BR').
artista('Jão', 'Monstros', 'ANTI-HERÓI', 2019,'BR').
artista('Jão', 'Essa Eu Fiz Pro Nosso Amor', 'ANTI-HERÓI', 2019,'BR').

%REGRAS
musica_artista(Musica, Cantor):-artista(Cantor,Musica,_,_,_).

ano_lançamentoAlbum(Album, Ano):-artista(_,_,Album,Ano,_). 

nacionalidade_artistas(Cantor,Nacionalidade):-artista(Cantor,_,_,_,Nacionalidade). 

musica_album(Musica,Album):-artista(_,Musica,Album,_,_). 

musica_nacionalidade(Musica, Cantor, Nacionalidade):-artista(Cantor,Musica,_,_,Nacionalidade). 

               
