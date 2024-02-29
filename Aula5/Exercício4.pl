%banco de dados
dono(jose, carro(onix, azul, passeio)).
dono(maria, carro(civic, vermelho, passeio)).
dono(joao, carro(uno, preto, trabalho)).
dono(ana, carro(gol, prata, passeio)).
dono(pedro, carro(fiesta, azul, passeio)).
dono(fernanda, carro(fusca, branco, passeio)).
dono(carlos, carro(fox, preto, passeio)).
dono(mariana, carro(hilux, preto, trabalho)).
dono(ricardo, carro(cruze, cinza, passeio)).
dono(beatriz, carro(corolla, prata, passeio)).

% REGRAS

% Maria é dona de alguma coisa?
dona_de_alguma_coisa(maria) :-
    dono(maria, _).

% João é dono de quê?
dono_de(Joao, Carro) :-
    dono(joao, Carro).

% Quem é dono de um carro (de qualquer marca) preto?
dono_de_carro_preto(Dono) :-
    dono(Dono, carro(_, preto, _)).

% Existe alguém que seja dono de algum carro (de qualquer cor e marca)?
existe_dono_de_carro(Dono) :-
    dono(Dono, _).

% Quais são as cores dos carros de trabalho?
cores_carros_trabalho(Cor) :-
    dono(_, carro(_, Cor, trabalho)).
