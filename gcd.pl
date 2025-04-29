gcd(A, 0, A) :- A > 0.
gcd(A, B, R) :-
    B > 0,
    Rem is A mod B,
    gcd(B, Rem, R).
