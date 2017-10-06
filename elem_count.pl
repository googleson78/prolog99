%why this no work??
%elem_count([], 0).
%elem_count([_|Xs], K):- number(K), succ(K1, K), elem_count(Xs, K1).

elem_count([], 0).
elem_count([_|Xs], K):- elem_count(Xs, K1), succ(K1, K).
