concat([], L, L).
concat([H|T], L2, [H|R]) :- concat(T, L2, R).
