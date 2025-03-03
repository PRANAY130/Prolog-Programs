% Facts
food(burgers).
food(pizza).
food(sandwich).

lunch(sandwich).
dinner(pizza).

% Rules
meal(X):- food(X).