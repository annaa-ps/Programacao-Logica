/*1) Faça um programa em prolog que calcule o fatorial, fatorial(X, Y): 
 * o fatorial de X é Y, de forma recursiva.*/

fatorial(0,1).
fatorial(N,F):- N > 0,
    			N1 is N-1, 
    			fatorial(N1,F1),
    			F is N*F1. 
