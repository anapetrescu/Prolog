sits_right_of(cersei, janos).
sits_right_of(janos, tyrion).
sits_right_of(tyrion, grand_maester).
sits_right_of(grand_maester, varys).
sits_right_of(varys, baelish).
sits_right_of(baelish, tywin).

sits_left_of(X, Y) :- sits_right_of(Y, X).
are_neighbors_of(X, Y, Z) :- sits_left_of(X, Z), sits_right_of(Y, Z).
next_to_each_other(X, Y) :- sits_right_of(X, Y).
next_to_each_other(X, Y) :- sits_right_of(Y, X).
