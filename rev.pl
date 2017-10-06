list_eq([], []).
list_eq([X|Xs], [X|Ys]):- list_eq(Xs, Ys).

rev([], []).
rev([X|Xs], Ys):- rev(Xs, Rev), append(Rev, [X|[]], Ys).

palindrome(Xs):- rev(Xs, Rev), list_eq(Xs, Rev).
