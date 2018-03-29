male(rickard_stark).
parent_of(rickard_stark, ned).
parent_of(rickard_stark, brandon).
parent_of(rickard_stark, benjen).
parent_of(rickard_stark, lyanna).

female(lyarra_stark).
parent_of(lyarra_stark, ned).
parent_of(lyarra_stark, brandon).
parent_of(lyarra_stark, benjen).
parent_of(lyarra_stark, lyanna).

male(ned).
parent_of(ned, robb).
parent_of(ned, sansa).
parent_of(ned, arya).
parent_of(ned, bran).
parent_of(ned, rick).

female(catelyn).
parent_of(catelyn, robb).
parent_of(catelyn, sansa).
parent_of(catelyn, arya).
parent_of(catelyn, bran).
parent_of(catelyn, rick).

male(brandon).
male(benjen).
male(robb).
female(sansa).
female(arya).
male(bran).
male(rick).

female(lyanna).
parent_of(lyanna, john_snow).

male(aerys).
parent_of(aerys, rhaegar).
parent_of(aerys, viserys).
parent_of(aerys, daenerys).

female(rhaella).
parent_of(rhaella, rhaegar).
parent_of(rhaella, viserys).
parent_of(rhaella, daenerys).

male(rhaegar).
parent_of(rhaegar, john_snow).
parent_of(rhaegar, rhaenys).
parent_of(rhaegar, aegon).

female(elia).
parent_of(elia, rhaenys).
parent_of(elia, aegon).

male(john_snow).
male(viserys).
female(daenerys).

father_of(Father, Child) :- parent_of(Father, Child), male(Father).
mother_of(Mother, Child) :- parent_of(Mother, Child), female(Mother).
grandfather_of(Grandfather, Child) :- parent_of(Grandfather, Parent), parent_of(Parent, Child), male(Grandfather).
grandmother_of(Grandmother, Child) :- parent_of(Grandmother, Parent), parent_of(Parent, Child), female(Grandmother).
sister_of(Sister, Person) :- parent_of(Parent, Sister), parent_of(Parent, Person), female(Sister).
brother_of(Brother, Person) :- parent_of(Parent, Brother), parent_of(Parent, Person), male(Brother).
aunt_of(Aunt, Person) :- sister_of(Aunt, Parent), parent_of(Parent, Person).
uncle_of(Uncle, Person) :- brother_of(Uncle, Parent), parent_of(Parent, Person).

