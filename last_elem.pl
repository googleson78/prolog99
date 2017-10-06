%Example:
%?- my_last(X,[a,b,c,d]).
%X = d

last_elem(X, [X|[]]).
last_elem(X, [_|Ys]):- last_elem(X, Ys).
