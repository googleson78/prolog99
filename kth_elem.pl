%Example:
%?- element_at(X,[a,b,c,d,e],3).
%X = c

take(0, _, []).
take(K, [X|Xs], [X|Ys]):- number(K), succ(K1, K), take(K1, Xs, Ys).


minus_one(X, Y):- succ(Y, X).

equal(0, 0).
equal(X, Y):- succ(X1, X), succ(Y1, Y), equal(X1, Y1).

take2(0, _, []).
take2(K, [X|Xs], [X|Ys]):- number(K), succ(K1, K), take2(K1, Xs, Ys).

drop(0, Xs, Xs).
drop(K, Xs, Ys):- number(K), take(K, Xs, H), append(H, Ys, Xs).

element_at(X, Ys, K):- number(K), succ(K1, K), drop(K1, Ys, [X|_]).

%TODO: make drop/take/element_at work like this:
%?- take(X, [a,b,c], [a,b]).
%X = 2
