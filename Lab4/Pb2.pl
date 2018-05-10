successor2([], Result, H) :- [H] = Result.
successor2([H|T], [H|Result], H) :- successor2(T, Result, H).
successor([], Result) :- [x] = Result.
successor(L,  Result) :- L = [H|T], successor2(L, Result, H).

plus([], [], []).
plus([], [H2|T2], [H2|Result]) :- plus([], T2, Result).
plus([H1|T1], [], [H1|T1]) :- plus(T1, [], Result).
plus(L, [H2|T2], [H2|Result]) :-  plus(L, T2, Result).

times2([], [], L2, []).
times2([H|T], [], L2, Result) :- times2(T, L2, L2, Result).
times2(L1, [H|T], L2, [H|Result]) :- times2(L1, T, L2, Result).
times([H|T], L2, Result) :- times2(T, L2, L2, Result).