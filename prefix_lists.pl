:-ensure_loaded(nat).
:-ensure_loaded(lists).

genK199(0, []).
genK199(K, [X|Xs]):- K > 0, succ(K1, K), btw(1, 99, X), genK199(K1, Xs).

mapLists([], []).
mapLists([X|Xs], [Y|Ys]):- genK199(X, Y), mapLists(Xs, Ys). 

scanLists([], _, []).
scanLists([X|Xs], Buf, [Y|Ys]):- append(Buf, X, Y), scanLists(Xs, Y, Ys).
                           
genRanLists(R):- genLists(L), mapLists(L, LNums), scanLists(LNums, [], R). 
