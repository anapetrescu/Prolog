la_stanga(X, Y) :- X is Y + 1.
la_dreapta(X, Y) :- la_stanga(Y, X).
langa(X, Y) :- la_stanga(X, Y); 
               la_dreapta(X, Y).

solutie(Strada,PosesorZebra) :-
Strada = [
casa(1,_,_,_,_,_),
casa(2,_,_,_,_,_),
casa(3,_,_,_,_,_),
casa(4,_,_,_,_,_),
casa(5,_,_,_,_,_)],
member(casa(_,englez,rosie,_,_,_), Strada),
member(casa(_,spaniol,_,caine,_,_), Strada),
member(casa(_,_,verde,_,cafea,_), Strada),
member(casa(_,ucrainean,_,_,ceai,_), Strada),
member(casa(X1,_,verde,_,_,_), Strada),
member(casa(Y1,_,bej,_,_,_), Strada),
la_dreapta(Y1, X1),
member(casa(_,_,_,melci,_,'OldGold'), Strada),
member(casa(_,_,galbena,_,_,'Kools'), Strada),
member(casa(3,_,_,_,lapte,_), Strada),
member(casa(1,norvegian,_,_,_,_), Strada),
member(casa(X2,_,_,_,_,'Chesterfields'),Strada),
member(casa(Y2,_,_,vulpe,_,_), Strada),
langa(X2, Y2),
member(casa(X4,_,_,_,_,'Kools'), Strada),
member(casa(Y4,_,_,cal,_,_), Strada),
langa(X4, Y4),
member(casa(_,_,_,_,portocale,'LuckyStrike'), Strada),
member(casa(_,japonez,_,_,_,'Parilaments'), Strada),
member(casa(X3,norvegian,_,_,_,_), Strada),
member(casa(Y3,_,albastra,_,_,_), Strada),
langa(X3, Y3),
member(casa(_,PosesorZebra,_,zebra,_,_), Strada).
