 symbol('I', 1).
 symbol('V', 5).
 symbol('X', 10).
 symbol('L', 50).
 symbol('C', 100).
 symbol('D', 500).
 symbol('M', 1000).

symbols2numbers([], []).
 symbols2numbers([H1|T1], [H|Numbers]) :- T1 = [H2|T2], symbol(H2, HH), symbol(H1, HHH), HH > HHH, H is HH - HHH, symbols2numbers(T2, Numbers);
                                          symbol(H1, H), symbols2numbers(T1, Numbers).
sum([], S) :- S is 0.
sum([H|T], S) :- Suma is H, sum(T, SS), S is SS + Suma.

roman2arabic(NumberR, NumberA) :- atom_chars(NumberR, Number), symbols2numbers(Number, Numbers), sum(Numbers, NumberA).