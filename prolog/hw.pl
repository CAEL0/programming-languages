canfix([_, _, _, fixed, L]) :-
    write(L).

canfix([middle, onChair, middle, broken, L]) :-
    append(L, [[fix]], TempL),
    write(TempL).

canfix([middle, onFloor, middle, broken, L]) :-
    append(L, [[climb]], TempL),
    canfix([middle, onChair, middle, broken, TempL]).

canfix([X, onFloor, X, broken, L]) :-
    append(L, [[drag, X, middle]], TempL),
    canfix([middle, onFloor, middle, broken, TempL]).

canfix([X, onFloor, Y, broken, L]) :-
    append(L, [[walk, X, Y]], TempL),
    canfix([Y, onFloor, Y, broken, TempL]).
