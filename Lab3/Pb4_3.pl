element_of(X,[X|_]).
element_of(X,[_|Tail]) :- element_of(X,Tail).
remove_duplicates([], []).
remove_duplicates([H|T], Lf) :- element_of(H, T), remove_duplicates(T, Lf).
remove_duplicates([H|T], [H|Lf]) :- remove_duplicates(T, Lf).