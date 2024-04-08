%2)Dado o diagrama que informa o caminho e o custo entre os pontos. 
%Faça um programa em prolog que dados dois pontos do diagrama retorne o 
%custo de todos os caminhos para chegar de um ponto origem a um ponto destino.

% Base de conhecimento
%distancia(origem,destino,custo).
distancia(a,b,5).
distancia(a,f,5).
distancia(a,g,75).
distancia(g,f,20).
distancia(c,d,10).
distancia(b,e,25).
distancia(b,f,25).
distancia(d,e,5).
distancia(c,f,5).
distancia(a,c,10). 

%Caso Base: se a origem e o destino forem iguais, o custo é zero
custo_caminho(Origem,Origem,0). 

%Caso recursivo: calcular o custo total do caminho
custo_caminho(Origem,Destino,Custo):- distancia(Origem, Proximo, Distancia),
                                      custo_caminho(Proximo, Destino, CustoRestante), 
                                      Custo is Distancia + CustoRestante. 
