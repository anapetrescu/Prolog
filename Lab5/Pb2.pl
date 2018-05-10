include('words.pl').

word_letters(Word, X) :- atom_chars(Word, X).
find(Word, L) :- word(Word), word_letters(Word, X), length(X, L).

cover(L1, L2) :- subset(L1, L2).

solution(LWord, Word, L) :- find(Word, L), word_letters(Word, X), cover(X, LWord);
                            L is L - 1, solution(LWord, Word, L).

topsolution(L, W, S) :- length(L, S), solution(L, W, S).

