%1) Defina o predicado último(L), que retorne o último item da numa lista L. 
%Por exemplo, último([a,b,c]), resulta em c.

%Caso Base: Se e a lista tiver 1 elemento, ele é o último
ultimo(L,[L]). 

%Caso Recursivo:
ultimo(L,[_|T]):- ultimo(L,T). 
