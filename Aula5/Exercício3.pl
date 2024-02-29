% Banco de dados
d(0, zero).
d(1, um).
d(2, dois).
d(3, três).
d(4, quatro).
d(5, cinco).
d(6, seis).
d(7, sete).
d(8, oito).
d(9, nove).

% Predicado para converter uma lista de dígitos em uma lista de palavras
txt([], []).
txt([Dígito|RestoDígitos], [Palavra|RestoPalavras]) :-
    d(Dígito, Palavra),
    txt(RestoDígitos, RestoPalavras).
