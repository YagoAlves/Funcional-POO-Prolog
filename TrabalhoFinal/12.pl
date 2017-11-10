
mulher(ana).
mulher(maria).
mulher(helena).
mulher(joana).

homem(jose).
homem(joao).
homem(mario).
homem(carlos).
homem(anatolievich).

progenitor(jose,ana).
progenitor(jose,joao).
progenitor(ana,helena).
progenitor(ana,joana).
progenitor(joao,mario).
progenitor(helena,carlos).
progenitor(mario,carlos).
progenitor(jose,anatolievich).
progenitor(ana,anatolievich).

pai(A,B) :- homem(A), progenitor(A,B).
mae(A,B) :- mulher(A), progenitor(A,B).
  
filho(A,B):- homem(A), progenitor(B,A).
filha(A,B):- mulher(A), progenitor(B,A).
 

irmao(A,B) :-
	homem(A),
	mulher(B),
	pai(P,A), pai(P,B),
	mae(M,A), mae(M,B),
	A\=B.
 
irma(A,B) :-
	mulher(A),
	homem(B),
	pai(P,A), pai(P,B),
	mae(M,A), mae(M,B),
	A\=B.

tio(T,A) :-
	homem(T),
	irmaos(T,X), progenitor(X,A).

primo(A,B) :-
	homem(A),
	progenitor(X,A),
	progenitor(Y,B),
	irmaos(X,Y).
 
descendente(X,Z) :- genitor(X,Z).
descendente(X,Z) :- genitor(X,Y), descendente(Y,Z).

avô(A,B) :- pai(A,X), pai(X,B).
