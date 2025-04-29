sum1([], 0).
sum1([H|T], S) :-
    sum1(T, S1),
    S is H + S1.