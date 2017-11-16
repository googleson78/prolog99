nat(0).
nat(X):- nat(Y), succ(Y,X).

btw(X, Y, X):- X =< Y.
btw(X, Y, R):- X < Y, succ(X, X1), btw(X1, Y, R).

genKS(1, S, [S]).
genKS(K, S, [X|Xs]):- btw(0, S, X), S1 is S - X, succ(K1, K), genKS(K1, S1, Xs).

genLists(X):- nat(N), btw(0, N, S), K is N - S, genKS(K, S, X).
