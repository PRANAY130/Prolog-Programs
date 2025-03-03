% Facts
own(jack,bmw).
own(john,chevy).
own(olivia,civic).
own(jane,chevy).

type(bmw,sedan).
type(chevy,truck).
type(civic,sedan).

% Rules
typeowner(X,Y):-own(X,Z),type(Z,Y).