%Regras e banco de dados
media_notas(Nome, Nota1, Nota2, Nota3, Nota4, Nota5, Media) :-
    Media is (Nota1 + Nota2 + Nota3 + Nota4 + Nota5) / 5.

status_aprovacao(Disciplina, Nota) :-
    (   Nota >= 60 ->
        write('Aprovado em '), write(Disciplina), nl
    ;   write('Reprovado em '), write(Disciplina), nl
    ).

main :-
    write('Digite o seu nome: '),
    read(Nome),
    write('Digite o nome da primeira disciplina e sua nota: '),
    read(Disciplina1),
    read(Nota1),
    write('Digite o nome da segunda disciplina e sua nota: '),
    read(Disciplina2),
    read(Nota2),
    write('Digite o nome da terceira disciplina e sua nota: '),
    read(Disciplina3),
    read(Nota3),
    write('Digite o nome da quarta disciplina e sua nota: '),
    read(Disciplina4),
    read(Nota4),
    write('Digite o nome da quinta disciplina e sua nota: '),
    read(Disciplina5),
    read(Nota5),
    status_aprovacao(Disciplina1, Nota1),
    status_aprovacao(Disciplina2, Nota2),
    status_aprovacao(Disciplina3, Nota3),
    status_aprovacao(Disciplina4, Nota4),
    status_aprovacao(Disciplina5, Nota5),
    media_notas(Nome, Nota1, Nota2, Nota3, Nota4, Nota5, Media),
    write('Média das notas: '), write(Media).
