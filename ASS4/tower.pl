% Tower of Hanoi in Prolog

% Base case: only one disk to move
move(1, A, B, _) :-
    write('Move top disk from '), write(A),
    write(' to '), write(B), nl.

% Recursive case
move(N, A, B, C) :-
    N > 1,
    M is N - 1,
    move(M, A, C, B),       % Move N-1 disks from source to auxiliary
    move(1, A, B, _),       % Move remaining disk to destination
    move(M, C, B, A).       % Move N-1 disks from auxiliary to destination
