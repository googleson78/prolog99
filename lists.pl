empty([]).

prefix(_, []).
prefix([X|Xs], [X|Ys]):- prefix(Xs, Ys).

suffix(Xs, Ys):- prefix(Xs, PR), append(PR, Ys, Xs).

sublists(_, []).
sublists(Xs, Ys):- prefix(Xs, PR), suffix(PR, Ys), not(empty(Ys)).
