/* facts */

parent(peggy, amy).
parent(peggy, paige).
parent(peggy, paula).
parent(peggy, tim).

parent(woody, amy).
parent(woody, paige).
parent(woody, paula).
parent(woody, tim).

parent(rose, dianne).
parent(rose, dan).
parent(rose, jack).
parent(rose, paul).

parent(george, dianne).
parent(george, dan).
parent(george, jack).
parent(george, paul).

parent(amy, ginger).
parent(amy, jackie).
parent(amy, andrew).
parent(amy, alex).

parent(jack, ginger).
parent(jack, jackie).
parent(jack, andrew).
parent(jack, alex).

parent(ginger, katelyn).
parent(zack, katelyn).

male(jack).
male(andrew).
male(alex).
male(woody).
male(tim).
male(george).
male(dan).
male(paul).
male(zack).

female(amy).
female(ginger).
female(jackie).
female(peggy).
female(paige).
female(paula).
female(rose).
female(dianne).
female(katelyn).

/* rules */

mother(X, Y) :-
    parent(X, Y),
    female(X).

father(X, Y) :-
    parent(X, Y),
    male(X).

child(X, Y) :-
    parent(Y, X).

partner(X, Y) :-
    child(Z, X),
    child(Z, Y),
    X \= Y.

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

grandfather(X, Y) :-
    grandparent(X, Y),
    male(X).

grandmother(X, Y) :-
    grandparent(X, Y),
    female(Y).

paternalgrandfather(X, Y) :-
    father(X, Z),
    father(Z, Y).

maternalgrandfather(X, Y) :-
    father(X, Z),
    mother(Z, Y).

paternalgrandmother(X, Y) :-
    mother(X, Z),
    father(Z, Y).

maternalgrandmother(X, Y) :-
    mother(X, Z),
    mother(Z, Y).

greatgrandparent(X, Y) :-
    parent(P, Y),
    grandparent(X, P).

son(X, Y) :-
    child(X, Y),
    male(X).

daughter(X, Y) :-
    child(X, Y),
    female(X).

grandchild(X, Y) :-
    grandparent(Y, X).

granddaughter(X, Y) :-
    grandchild(X, Y)
    female(X).

grandson(X, Y) :-
    grandchild(X, Y),
    male(X).

ancestor(X, Y) :-
    parent(X, Y).

ancestor(X, Y) :-
    parent(Z, Y),
    ancestor(X, Z).

descendant(X, Y) :-
    ancestor(Y, X).

relative(X, Y) :-
    ancestor(Z, X),
    ancestor(Z, Y).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

sister(X, Y) :-
    sibling(X, Y),
    female(X),
    X \= Y.

brother(X, Y) :-
    sibling(X, Y),
    male(X),
    X \= Y.

uncle(X, Y) :-
    brother(X, Z),
    child(Y, Z).

aunt(X, Y) :-
    sister(X, Z),
    child(Y, Z).

cousins(X, Y) :-
    grandparent(Z, X),
    grandparent(Z, Y),
    \+sibling(X, Y),
    X \= Y.
