% Lab 3 Assignment - Family Knowledge Base

% Male family members
male(ahmad).
male(hassan).
male(majed).

% Female family members
female(laila).
female(jumana).
female(haneen).
female(fatima).
female(mariam).

% Parent relationships
parent(ahmad, hassan).
parent(laila, hassan).

parent(ahmad, jumana).
parent(laila, jumana).

parent(ahmad, haneen).
parent(laila, haneen).

parent(ahmad, fatima).
parent(laila, fatima).

parent(jumana, majed).
parent(jumana, mariam).

% Grandfather Rule
grandfather(X, Y) :-
    male(X),
    parent(X, Z),
    parent(Z, Y).

% Grandmother Rule
grandmother(X, Y) :-
    female(X),
    parent(X, Z),
    parent(Z, Y).
    
% Father Rule
father(X, Y) :-
    male(X),
    parent(X, Y).

% Mother Rule
mother(X, Y) :-
    female(X),
    parent(X, Y).

% Sister Rule
sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Brother Rule
brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.