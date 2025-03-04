loop(0,0).
loop(N,M):-
    N=<M,
    write(N),nl,
    N1 is N+1,
    loop(N1,M).