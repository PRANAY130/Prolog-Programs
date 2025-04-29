mem_chck(X, [X|_]).
mem_chck(X, [_|T]) :- mem_chck(X, T).
