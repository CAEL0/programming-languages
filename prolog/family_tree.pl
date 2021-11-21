/* Family Tree */

/* Fact */
male(nick).
male(mike).
male(tom).
male(arnold).
male(michael).
male(jack).
female(ann).
female(julia).
female(ann).
female(nicole).
female(kitty).
parent(nick, mike).
parent(nick, julia).
parent(ann, mike).
parent(ann, julia).
parent(julia, sue).
parent(julia, jack).
parent(michael, sue).
parent(michael, jack).
parent(tom, arnold).
parent(tom, kitty).
parent(tom, michael).
parent(nicole, arnold).
parent(nicole, kitty).
parent(nicole, michael).

/* Rule */
father(X, Y) :-
    parent(X, Y),
    male(X).

mother(X, Y) :-
    parent(X, Y),
    female(X).

sibling(X, Y) :-
    father(F, X),
    father(F, Y),
    mother(M, X),
    mother(M, Y).

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

married(X, Y) :-
    parent(X, Z),
    parent(Y, Z).

descendent(D, A) :-
    parent(A, D).

descendent(D, A) :-
    parent(P, D),
    parent(A, P).
