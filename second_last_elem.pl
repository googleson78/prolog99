second_last_elem(X, [X|[_|[]]]).
second_last_elem(X, [_|Ys]):- second_last_elem(X, Ys).
