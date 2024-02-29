% Predicado sucessor(X, Y)
% X é sucessor de Y se X é igual a Y + 1.
sucessor(X, Y) :-
    X is Y + 1.

% Predicado par(X)
% X é par se o resto da divisão de X por 2 é igual a 0.
par(X) :-
    0 is X mod 2.

% Predicado triplo(X, Y)
% X é o triplo de Y se X é igual a 3 vezes Y.
triplo(X, Y) :-
    X is 3 * Y.

% Predicado entre(X, A, B)
% X está entre A e B se X é maior ou igual a A, menor ou igual a B e A é menor ou igual a B.
entre(X, A, B) :-
    X >= A,
    X =< B,
    A =< B.
