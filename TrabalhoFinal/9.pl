adjacente(X,X).
adjacente(X, Y):- Y =:= X + 1; Y =:= X - 1.

ultimo(X,[X]).
ultimo(X,[Y|L]) :- ultimo(X,L).

caminho(X,[Y]) :- adjacente(X,Y).
caminho(X,[Y|L]) :- adjacente(X,Y),caminho(Y,L).

ciclo([X]).
ciclo([X|L]) :- ultimo(Y,L),adjacente(X,Y),caminho(X,L).
