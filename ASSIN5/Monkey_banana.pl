% Action rules (transitions between states)

% Grasp banana
act(state(middle, onbox, middle, hasnot), grasp, state(middle, onbox, middle, has)).

% Climb on box
act(state(P, onfloor, P, H), climb, state(P, onbox, P, H)).

% Push box from one position to another
act(state(P1, onfloor, P1, H), push(P1, P2), state(P2, onfloor, P2, H)).

% Walk (move without pushing)
act(state(P1, onfloor, B, H), walk(P1, P2), state(P2, onfloor, B, H)).

% Recursive predicate to get banana
canget(state(_, _, _, has)).  % Success condition: monkey has the banana

canget(State1) :-
    act(State1, Action, State2),         % Perform an action
    write('Monkey does: '), write(Action), nl,
    write('New State: '), write(State2), nl, nl,
    canget(State2).                      % Recursive call

% Initial call
go :- canget(state(atdoor, onfloor, atwindow, hasnot)).
