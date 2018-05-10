calcul(_, [], []).
calcul(S, [H|T], [N|Rez]) :- 
					 N is S * H,
					 calcul(S, T, Rez).
scalarMult(S, L, Rezultat) :- calcul(S, L, Rezultat).

 
dot([], [], 0).
dot([H1|T1], [H2|T2], Rezultat) :-
  Produs is H1 * H2,
  dot(T1, T2, Res),
  Rezultat is Produs + Res.

max1([], Rezultat) :- Rezultat is 0.
max1([H|T],Rezultat) :- max1(T, Res), 
                       Res < H, Rezultat is H;
                       max1(T, Res),
                       Res >= H, Rezultat is Res.
 max(L, Rezultat) :-  max1(L,Rezultat).

                        
