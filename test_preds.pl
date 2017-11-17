%X has an element with exactly one element
p1(X):- member(Y, X), length(Y, 1).

%X has elements Y and Z whose intersection is empty
p2(X):- member(Y, X), member(Z, X), not((member(E, Y), member(E, Z))).

%X has an element Y whose elements are elements of every element of X
p3(X):- member(Y, X), not((member(Yy, Y), member(Z, X), not(member(Yy, Z)))).

%for every element Y of X, there exists a Z of X, such that Y and Z don't intersect         '
p4(X):- not(( member(Y, X), not((member(Z, X), not((member(Yy, Y), member(Yy, Z))) )) )).
