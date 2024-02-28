%BASE DE CONHECIMENTO
%Livro (Titulo, Ano, Autor)
livro('os sete maridos de evelyn hugo',2017,'taylor jenkins reid').
livro('a vida invisível de addie larue',2020,'v.e. schwab').
livro('gente ansiosa',2019,'fredrik backman').
livro('em busca de mim',2022,'viola davis').
livro('daisy jones & the six', 2019, 'taylor jenkins reid').
livro('jantar secreto',2016,'raphael montes').
livro('ás de espadas',2021,'feridah').
livro('o amor não é óbvio',2019,'elayne baeta').
livro('harry potter e a pedra filosofal',1997,'j.k. rowling').
livro('percy jackson o ladrão de raios',2005,'rick riordan').
livro('harry potter e o enigma do príncipe',2005,'j.k. rowling').                              
livro('percy jackson o último olimpiano',2009,'rick riordan').
livro('carrie soto está de volta',2022,'taylor jenkins reid').
livro('delilah green não está nem aí',2022,'ashley herring blake').
livro('astrid parker nunca falha',2023,'ashley herring blake').
livro('as vantagens de ser invisivel',1999,'stephen chbosky').
livro('última parada',2021,'casey mcquiston').
livro('vermelho, branco e sangue azul',2019,'casey mcquiston').
livro('oxe, baby',2021,'elayne baeta').
livro('dias perfeitos',2014,'raphael montes').

%REGRAS
%Livros de um determinado autor
livros_autor(Autor, [Titulo | OutrosLivros]):-livro(Titulo,_,Autor), livros_autor(Autor, OutrosLivros). 
