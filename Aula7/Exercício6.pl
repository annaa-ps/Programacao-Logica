%6) Imagine que você resolva passear mundo afora e possua a seguinte base 
%de conhecimento sobre opções de transporte entre cidades:
%Escreva um predicado viagem/2 que determine se é possível viajar de um 
%lugar a outro usando qualquer meio de transporte disponível: carro, trem e 
%avião. Por exemplo, seu programa deveria responder true para a consulta
%viagem( goiania, brasilia).

%Banco de Dados
deCarro(uberlandia, monteCarmelo).
deCarro(unai, brasilia).
deCarro(goiania, itumbiara).
deCarro(goiania, ituiutaba).
deTrem(ituiutaba, araguari).
deTrem(itumbiara, araguari).
deTrem(ituiutaba, monteAlegre).
deTrem(monteCarmelo, monteAlegre).
deAviao(saoPaulo, recife).
deAviao( aoPaulo, rioJaneiro).
deAviao(monteAlegre, bh).
deAviao(recife, maceio).
deAviao(bh, unai).
