% Novas variáveis para representar o mapa
estrada_nova(1, cidade_a, cidade_b).
estrada_nova(2, cidade_a, cidade_d).
estrada_nova(3, cidade_b, cidade_c).
estrada_nova(4, cidade_c, cidade_d).
estrada_nova(5, cidade_b, cidade_e).
estrada_nova(6, cidade_c, cidade_f).
estrada_nova(7, cidade_d, cidade_f).
estrada_nova(8, cidade_e, cidade_f).

% Predicado para determinar uma rota R (lista de estradas) que leva da cidade A até a cidade B
rota_nova(CidadeA, CidadeB, R) :- estrada_nova(_, CidadeA, CidadeB).

% Predicado para determinar uma rota R (lista de estradas) que chega à cidade A
rotac_nova(R, CidadeA) :- rota_nova(_, CidadeA, R).

% Predicado para determinar uma rota R (lista de estradas) que sai da cidade A
rotad_nova(R, CidadeA) :- rota_nova(CidadeA, _, R).

% Predicado para determinar todas as rotas que saem de uma cidade A
rotas_nova(Rotas, CidadeA) :- findall(Rota, rotad_nova(Rota, CidadeA), Rotas).

