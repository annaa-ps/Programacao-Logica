%BASE DE CONHECIMENTO
%matéria que estuda
estuda(fabricio, programação).
estuda(joana, lógica).
estuda(ana, tcc). 
estuda(josé, banco).
estuda(lucas, estrutura).
estuda(nicolas, lógica).
estuda(fernanda, tcc).
estuda(maria, tcc).

%aluno e faculdade
aluno(fabricio, ufmg).
aluno(joana, ufu).
aluno(ana, ufu).
aluno(josé, ufu).
aluno(lucas, ufmg).
aluno(nicolas, ufu).
aluno(fernanda, ufu).
aluno(maria, ufu).

%professor e matéria
professor(joão, programação).
professor(clara, lógica).
professor(roberta, tcc).
professor(antonio, banco).
professor(leandro, estrutura).

%reitor e faculdade
reitor(beatriz, ufmg).
reitor(marcos, ufu).

%curso e matéria que oferta
oferta(bcc, programação).
oferta(bcc, lógica).

%REGRAS 
%Regra 1
alunos_professor(X,Y):-estuda(X,Z), professor(Y,Z). 

%Regra 2
alunos_bcc(X):-estuda(X,Y), oferta(bcc,Y). 

%Regra 3
alunos_si(X):-estuda(X,Y), oferta(si, Y). 

%Regra 4 
alunos_universidade(X,Y):-aluno(X,Y). 

%Regra 5 
disciplinas_professor(X,Y):-professor(Y,X). 
    
%Regra 6 
professor_universidade(X,Y):-professor(X,Z), estuda(A,Z), aluno(A,Y). 

%Regra 7 
disciplinas_universidade(X,Y):-estuda(A,X), aluno(A,Y).
oferta(si, tcc).
oferta(si, banco).
oferta(bcc, estrutura).

%REGRAS 
