%Example:
%?- element_at(X,[a,b,c,d,e],3).
%X = c

take(0, _, []).
take(K, [X|Xs], [X|Ys]):- number(K), K1 is K - 1, take(K1, Xs, Ys).

drop(0, Xs, Xs).
drop(K, Xs, Ys):- number(K), take(K, Xs, H), append(H, Ys, Xs).

element_at(X, Ys, K):- number(K), K1 is K - 1, drop(K1, Ys, [X|_]).

%TODO: make drop/take/element_at work like this:
%?- take(X, [a,b,c], [a,b]).
%X = 2
