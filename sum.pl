sumw(0,0).
sumw(N,Sum):-
    N > 0, 
    N1 is N-1, 
    sumw(N1,Sum1), 
    Sum is N + Sum1.
