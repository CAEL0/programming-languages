/* Map Coloring */

/* Fact */
color(red).
color(green).
color(blue).
color(yellow).

graph(A, B, C, D, E) :-
    neighbor(A, B),
    neighbor(A, C),
    neighbor(A, D),
    neighbor(A, E),
    neighbor(B, C),
    neighbor(B, D),
    neighbor(C, D),
    neighbor(D, E).

/* Rule */
neighbor(AColor, BColor) :-
    color(AColor),
    color(BColor),
    AColor \= BColor.
