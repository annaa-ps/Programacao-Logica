%1- Crie um programa em Prolog que leia um número e calcule e imprima o 
%quadrado desse número. O programa deve continuar a execução até que o 
%usuário digite a palavra 'pare'

main:- repeat, write('Digite um número(ou "pare" para encerrar):'), 
       read(X), 
       (X == pare ->!; calcular(X)). 

calcular(X):- Q is X*X, write(Q),nl,fail. 
