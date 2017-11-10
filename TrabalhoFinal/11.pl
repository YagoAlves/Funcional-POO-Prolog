fat(0, 1).

fat(N, T) :- N > 0, N1 is N - 1, fat(N1, T1), T is N * T1.
