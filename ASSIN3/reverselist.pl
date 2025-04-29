list_rev([], []).
list_rev([H|T], R) :-
    list_rev(T, R1),
    append(R1, [H], R).
