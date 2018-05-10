element_at([H|T], 1, H).
element_at([H|T], N, Result) :- A is N - 1, element_at(T, A, Result).
