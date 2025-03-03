parent(sudip, piyus).
parent(sudip, raj).
male(piyus).
male(raj).

brother(X,Y):-parent(Z,X), parent(Z,Y), male(X), male(Y).