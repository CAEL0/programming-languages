/* Einstein's Riddle */

/* Fact */
einstein(Fishowner) :-
    Houses = [[nor, _, _, _, _], _, [_, _, _, milk, _], _, _],
    isin([eng, red, _, _, _], Houses),
    isin([swe, _, dog, _, _], Houses),
    isin([den, _, _, tea, _], Houses),
    nexthouse([_ , green, _, _, _], [_, white, _, _, _], Houses),
    isin([_, green, _, coffee, _], Houses),
    isin([_, _, bird, _, pall], Houses),
    isin([_, yellow, _, _, dunhill], Houses),
    neighbor([_, _, _, _, blend], [_, _, cat, _, _], Houses),
    neighbor([_, _, horse, _, _], [_, _, _, _, dunhill], Houses),
    isin([_, _, _, beer, bluemaster], Houses),
    isin([ger, _, _, _, prince], Houses),
    neighbor([nor, _, _, _, _], [_, blue, _, _, _], Houses),
    neighbor([_, _, _, _, blend], [_, _, _, water, _], Houses),
    isin([Fishowner, _, fish, _, _], Houses).

einstein(Fishowner, Houses) :-
    Houses = [[nor, _, _, _, _], _, [_, _, _, milk, _], _, _],
    isin([eng, red, _, _, _], Houses),
    isin([swe, _, dog, _, _], Houses),
    isin([den, _, _, tea, _], Houses),
    nexthouse([_, green, _, _, _], [_, white, _, _, _], Houses),
    isin([_, green, _, coffee, _], Houses),
    isin([_, _, bird, _, pall], Houses),
    isin([_, yellow, _, _, dunhill], Houses),
    neighbor([_, _, _, _, blend], [_, _, cat, _, _], Houses),
    neighbor([_, _, horse, _, _], [_, _, _, _, dunhill], Houses),
    isin([_, _, _, beer, bluemaster], Houses),
    isin([ger, _, _, _, prince], Houses),
    neighbor([nor, _, _, _, _], [_, blue, _, _, _], Houses),
    neighbor([_, _, _, _, blend], [_, _, _, water, _], Houses),
    isin([Fishowner, _, fish, _, _], Houses).

/* Rule */
nexthouse(L, R, [L, R|_]).

nexthouse(L, R, [_|Rest]) :-
    nexthouse(L, R, Rest).

neighbor(X, Y, Houses) :-
    nexthouse(X, Y, Houses);
    nexthouse(Y, X, Houses).

isin(X, [X|_]).
isin(X, [_|Y]) :-
    isin(X, Y).
