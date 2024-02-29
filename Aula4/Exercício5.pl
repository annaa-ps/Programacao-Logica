%Banco De Dados    
populacao(paisA, 203).
populacao(paisB, 548).
populacao(paisC, 800).
populacao(paisD, 108).
populacao(paisE, 392).
populacao(paisF, 290).
populacao(paisG, 111).
area(paisA, 8).
area(paisB, 3).
area(paisC, 10).
area(paisD, 8).
area(paisE, 5).
area(paisF, 3).
area(paisG, 4).

%Regra
densidade(Pais,Densidade):- populacao(Pais,Pop), 
    area(Pais, Area), 
    Densidade is Pop/Area.
