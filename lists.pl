empty([]).

prefix(_, []).
prefix([X|Xs], [X|Ys]):- prefix(Xs, Ys).

suffix(Xs, Ys):- prefix(Xs, PR), append(PR, Ys, Xs).

sublist([], _).
sublist(X, Y):- prefix(Y, PR), suffix(PR, X), not(empty(X)).

%only_subl(X,Y) is true if every element of x is a sublist of Y
only_subl(X, Y):- not((member(Z, X), not(sublist(Z, Y)))).

%combining with a "subset" predicate we now get 
%X contains all (and only) sublists of Y
all_subl(X, Y):- only_subl(X, Y), not((sublist(Z, Y), not(member(Z, X)))).
