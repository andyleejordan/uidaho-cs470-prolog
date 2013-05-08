isA(X,mammal) :- 
animal(X), 
warmblooded(X). 


isA(X,reptile) :- 
animal(X), 
scales(X), 
laysEggs(X). 


isA(X,bird) :- 
animal(X), 
feathers(X), 
laysEggs(X). 


isA(X,Y) :- 
parent(Z,X),
isA(Z,Y).


laysEggs(X) :-
buildsNest(X).


laysEggs(snake).


:- dynamic(animal/1).
animal(robin).
animal(crocodile).
animal(snake).
animal(cat).

:-dynamic(warmblooded/1).
warmblooded(cat).

scales(snake).

buildsNest(robin).

feathers(robin).

parent(cat,kitten).
