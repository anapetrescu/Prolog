born(jan, date(20,3,1977)).
born(jeroen, date(2,2,1992)).
born(joris, date(17,3,1995)).
born(jelle, date(1,1,2004)).
born(joan, date(24,12,0)).
born(joop, date(30,4,1989)).
born(jannecke, date(17,3,1993)).
born(jaap, date(16,11,1995)).

year(Y, Person) :- born(Person, date(_,_,Y)).

before(date(X1, Y1, Z1), date(X2, Y2, Z2)) :- Z1 < Z2;
                                              Z1 is Z2, Y1 < Y2;
                                              Z1 is Z2, Y1 is Y2, X1 < X2.

older(Person, X) :- born(Person, date(D, M, Y)), 
                    born(X, date(D1, M1, Y1)),
                    Y < Y1;
                    born(Person, date(D, M, Y)), 
                    born(X, date(D1, M1, Y1)),
                    Y is Y1, M < M1;
                    born(Person, date(D, M, Y)), 
                    born(X, date(D1, M1, Y1)),
                    Y is Y1, M is M1, D < D1.