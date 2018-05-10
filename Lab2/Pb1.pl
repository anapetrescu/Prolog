square(N, C) :- X is 0, Y is 1, forl(X, Y, N, C).

forl(N, N, N, C) :- nl.

forl(N, Y, N, C) :- X is 0, Z is Y + 1, nl, forl(X, Z, N, C).
forl(X, Y, N, C) :- write(C), Z is X + 1, forl(Z, Y, N, C).


