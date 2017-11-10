membro(X,[X|L]).
membro(X,L) :- membro(X,[X|L]); membro(X,L2).

adiciona(X,[Y,K],[Y,K,X]).

concatena([],X,X).
concatena([X|A],B,[X|C]) :- concatena(A,B,C).

comprimento(1,[X]).
comprimento(X,[Y|L]):- comprimento(N,L), X is N+1.

apaga(X,[X|R],R).
apaga(X,[F|R],[F|Y]):- apaga(X,R,Y).