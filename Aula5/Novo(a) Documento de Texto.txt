%Banco de dados 
livro(nome('C completo e total'), autor('Schildt'), pal_chave([linguagemc, programacao, computacao])).
livro(nome('Clean Code'), autor('Robert C. Martin'), pal_chave([programacao, qualidade, software])).
livro(nome('O Senhor dos Anéis'), autor('J.R.R. Tolkien'), pal_chave([fantasia, aventura, ficcao])).
livro(nome('O Código Da Vinci'), autor('Dan Brown'), pal_chave([misterio, conspiracao, arte])).
livro(nome('Harry Potter e a Pedra Filosofal'), autor('J.K. Rowling'), pal_chave([magia, aventura, ficcao])).
livro(nome('Fundamentos da Física'), autor('Halliday e Resnick'), pal_chave([fisica, educacao, ciencia])).
livro(nome('O Poder do Hábito'), autor('Charles Duhigg'), pal_chave([psicologia, autoajuda, habitos])).
livro(nome('Inteligência Artificial: Uma Abordagem Moderna'), autor('Stuart Russell e Peter Norvig'), pal_chave([inteligenciaartificial, machinelearning, algoritmos])).
livro(nome('O Hobbit'), autor('J.R.R. Tolkien'), pal_chave([fantasia, aventura, ficcao])).
livro(nome('A Brief History of Time'), autor('Stephen Hawking'), pal_chave([astrofisica, ciencia, universo])).

%Regras
nome_autor(NomeAutor, NomeLivro) :-
    livro(nome(NomeLivro), autor(NomeAutor), _).

nome_livro(NomeLivro, NomeAutor) :-
    livro(nome(NomeLivro), autor(NomeAutor), _).

palavras_chave(PalavrasChave, NomeLivro) :-
    livro(nome(NomeLivro), _, pal_chave(PalavrasChave)).


autor_livro_por_palavra_chave(NomeAutor, NomeLivro, PalavraChave) :-
    livro(nome(NomeLivro), autor(NomeAutor), pal_chave(PalavrasChave)),
    member(PalavraChave, PalavrasChave).

livro_com_palavras_chave(ListaPalavrasChave, Livro, Autor) :-
    livro(nome(Livro), autor(Autor), pal_chave(PalavrasChave)),
    member(PalavraChave, ListaPalavrasChave),
    member(PalavraChave, PalavrasChave).
