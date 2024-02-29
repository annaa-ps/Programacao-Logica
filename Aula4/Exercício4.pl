%Banco De Dados    
%Professor(Nome, Disciplina, Peso).
professor(prof1, programação, 0.5).
professor(prof2, lógica, 0.6).
professor(prof3, cálculo, 0.7).

%Aluno(Nome, Disciplina, Nota).
aluno(ana, programação, 8).
aluno(beto, lógica, 7).
aluno(clara, cálculo, 6).
aluno(daniel, programação, 9).
aluno(elisa, lógica, 6).
aluno(felipe, cálculo, 5).
aluno(gabriela, cálculo, 7).
aluno(hugo, lógica, 8).
aluno(isabela, disciplina3, 9).
aluno(joão, programação, 6).
aluno(karen, lógica, 5).
aluno(lucas, cálculo, 7).
aluno(mariana, programação, 8).
aluno(nathan, lógica, 9).
aluno(olivia, cálculo, 4).
aluno(pedro, programação, 5).
aluno(queiroz, lógica, 6).
aluno(raquel, cálculo, 7).
aluno(samuel, programação, 8).
aluno(tatiana, lógica, 9).

%REGRAS
% Regra para encontrar o aluno que obteve a maior nota em uma disciplina
nota(Aluno,Disciplina,Nota):- aluno(Aluno, Disciplina, NotaAluno), 
    professor(_,Disciplina, Peso), 
    Nota is (NotaAluno * Peso) / 5.

% Regra para encontrar o aluno que obteve a maior nota em uma disciplina
maiorNota(Disciplina, Aluno) :-
    aluno(Aluno, Disciplina, Nota),
    \+ maiorNotaDeOutroAluno(Disciplina, Nota).

% Regra auxiliar para verificar se não há outro aluno com uma nota maior
maiorNotaDeOutroAluno(Disciplina, Nota) :-
    aluno(_, Disciplina, OutraNota),
    OutraNota > Nota.

% Regra para encontrar o aluno que obteve a menor nota em uma disciplina
menorNota(Disciplina, Aluno):- 
    aluno(Aluno, Disciplina, Nota),
    \+ menorNotaDeOutroAluno(Disciplina,Nota). 

% Regra auxiliar para verificar se não há outro aluno com uma nota menor
menorNotaDeOutroAluno(Disciplina,Nota):-
    aluno(_,Disciplina, OutraNota),
    OutraNota < Nota. 

mairNota(Aluno) :-
    aluno(Aluno, _, Nota),
    \+ (aluno(_, _, OutraNota), OutraNota > Nota).
