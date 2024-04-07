%3) Crie um programa em prolog que calcula o mdc entre dois número, ou seja, 
%mdc(X, Y, Z) onde Z é o máximo divisor comum entre X e Y.

%Caso Base: Quando temos um determinado valor fazendo MDC com ZERO, o resultado será ele mesmo
mdc(X,0,X).  

%
mdc(X, Y, Z):- Y > 0, 
    		   Y2 is X mod Y, 
    		   mdc(Y,Y2,Z). 

    
			
    				
