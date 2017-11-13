flatten([], []).
flatten([X|Xs], Ys):- is_list(X), flatten(X, Y), flatten(Xs, Ys1), append(Y, Ys1, Ys).
flatten([X|Xs], [X|Ys]):- not(is_list(X)), flatten(Xs, Ys).
