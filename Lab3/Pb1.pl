all_a(X) :-  X = [H|T],
            element_of(a, [H]),
			verificare(X).
element_of(X, [X|_]).
verificare([]).
verificare(Y) :- Y = [H|T],
                 element_of(a, [H]),
                 verificare(T). 
all_b(X) :-  X = [H|T],
            element_of(b, [H]),
			verificare1(X).
verificare1([]).
verificare1(Y) :- Y = [H|T],
                 element_of(a, [H]),
                 verificare(T). 
  