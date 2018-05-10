reverseList([H|T], List2) :- reverseList2(T, [H], List2).
reverseList2([], Acc, Acc).
reverseList2([H|T], Acc, List2) :- reverseList2(T, [H|Acc], List2).

palindrome(List) :- reverseList(List, List2), palindrome2(List, List2).
palindrome2([], []).
palindrome2([H|T1], [H|T2]) :- palindrome2(T1, T2).