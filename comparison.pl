comparison(X,Y):-
    (X>Y->write('X is greater than Y');write('Y is greater than X')),nl,
    (X==Y->write('X is equal to Y');write('')),nl.
