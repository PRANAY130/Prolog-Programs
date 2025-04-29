list_insert(X, L, R) :-
    append(Front, Back, L),
    append(Front, [X|Back], R).

