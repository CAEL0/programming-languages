/* Verbal Reasoning Test */

/* Fact */
betty(Second, Third) :-
    xor(Second = kity, Third = betty).

ethel(First, Second) :-
    xor(First = ethel, Second = joan).

joan(Third, Fifth) :-
    xor(Third = joan, Fifth = ethel).

kitty(Second, Fourth) :-
    xor(Second = kitty, Fourth = mary).

mary(Fourth, First) :-
    xor(Fourth = mary, First = betty).

/* Rule */
xor(A, B) :-
    A,
    not(B).

xor(A, B) :-
    not(A),
    B.

group(L, 5, Result) :-
    Result = L.

group(L, Idx, Result) :-
    (not(member(betty, L)), append(L, [betty], TempL);
     not(member(ethel, L)), append(L, [ethel], TempL);
     not(member(joan, L)), append(L, [joan], TempL);
     not(member(kitty, L)), append(L, [kitty], TempL);
     not(member(mary, L)), append(L, [mary], TempL)),
     Idx2 is Idx + 1,
     group(TempL, Idx2, Result).

solution([First, Second, Third, Fourth, Fifth]) :-
    group([], 0, [First, Second, Third, Fourth, Fifth]),
    betty(Second, Third),
    ethel(First, Second),
    joan(Third, Fifth),
    kitty(Second, Fourth),
    mary(Fourth, First).
