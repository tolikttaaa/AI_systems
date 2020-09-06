parent(anischenko_alexey, anischenko_anatoliy).
parent(anischenko_julia, anischenko_anatoliy).
parent(anischenko_alexey, anischenko_timofey).
parent(anischenko_julia, anischenko_timofey).
parent(anischenko_vitaliy, anischenko_alexey).
parent(anischenko_olga, anischenko_alexey).
parent(anischenko_vitaliy, anischenko_igor).
parent(anischenko_olga, anischenko_igor).
parent(kukushkin_michail, anischenko_julia).
parent(kukushkina_tatiana, anischenko_julia).
parent(kukushkin_pavel, kukushkin_michail).
parent(kukushkina_vera, kukushkin_michail).
parent(kukushkin_pavel, tsygonyaeva_elena).
parent(kukushkina_vera, tsygonyaeva_elena).
parent(drobov_aleksandr, kukushkina_tatiana).
parent(drobova_nina, kukushkina_tatiana).
parent(drobov_aleksandr, ilyicheva_luda).
parent(drobova_nina, ilyicheva_luda).
parent(tsygonyaev_yuriy, tsygonyaev_alexey).
parent(tsygonyaeva_elena, tsygonyaev_alexey).
parent(tsygonyaev_yuriy, tsygonyaev_vitaliy).
parent(tsygonyaeva_elena, tsygonyaev_vitaliy).
parent(tsygonyaev_alexey, tsygonyaev_ivan).
parent(tsygonyaeva_tatiana, tsygonyaev_ivan).
parent(tsygonyaev_vitaliy, tsygonyaev_michail).
parent(tsygonyaeva_anna, tsygonyaev_michail).
parent(tsygonyaev_vitaliy, tsygonyaev_sergey).
parent(tsygonyaeva_anna, tsygonyaev_sergey).


male(anischenko_alexey).
male(anischenko_anatoliy).
male(anischenko_timofey).
male(anischenko_igor).
male(anischenko_vitaliy).
male(kukushkin_michail).
male(kukushkin_pavel).
male(drobov_aleksandr).
male(tsygonyaev_yuriy).
male(tsygonyaev_alexey).
male(tsygonyaev_vitaliy).
male(tsygonyaev_ivan).
male(tsygonyaev_michail).
male(tsygonyaev_sergey).

female(anischenko_julia).
female(anischenko_olga).
female(kukushkina_tatiana).
female(kukushkina_vera).
female(drobova_nina).
female(ilyicheva_luda).
female(tsygonyaeva_elena).
female(tsygonyaeva_tatiana).
female(tsygonyaeva_anna).


predecessor(X, Y) :- parent(X, Y).
predecessor(X, Y) :- parent(Z, Y), predecessor(X, Z).

relatives(X, Y) :- predecessor(X, Y); predecessor(Y, X); predecessor(Z, X), predecessor(Z, Y).

grandparent(X, Y) :- parent(Z, Y), parent(X, Z).
great_grandparent(X, Y) :- grandparent(Z, Y), parent(X, Z).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
uncle_or_aunt(X, Y) :- sibling(X, Z), parent(Z, Y).
great_uncle_or_aunt(X, Y) :- uncle_or_aunt(X, Z), parent(Z, Y).

father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
grandfather(X, Y) :- male(X), grandparent(X, Y).
grandmother(X, Y) :- female(X), grandparent(X, Y).
great_grandfather(X, Y) :- male(X), great_grandparent(X, Y).
great_grandmother(X, Y) :- female(X), great_grandparent(X, Y).
son(X, Y) :- male(X), parent(Y, X).
daughter(X, Y) :- female(X), parent(Y, X).
grandson(X, Y) :- male(X), grandparent(Y, X).
granddaughter(X, Y) :- female(X), grandparent(Y, X).
great_grandson(X, Y) :- male(X), great_grandparent(Y, X).
great_granddaughter(X, Y) :- female(X), great_grandparent(Y, X).
brother(X, Y) :- male(X), sibling(X, Y).
sister(X, Y) :- female(X), sibling(X, Y).
uncle(X, Y) :- male(X), uncle_or_aunt(X, Y).
aunt(X, Y) :- female(X), uncle_or_aunt(X, Y).
nephew(X, Y) :- male(X), uncle_or_aunt(Y, X).
niece(X, Y) :- female(X), uncle_or_aunt(Y, X).
great_uncle(X, Y) :- male(X), great_uncle_or_aunt(X, Y).
great_aunt(X, Y) :- female(X), great_uncle_or_aunt(X, Y).
great_nephew(X, Y) :- male(X), great_uncle_or_aunt(Y, X).
great_niece(X, Y) :- female(X), great_uncle_or_aunt(Y, X).
first_cousin(X, Y) :- grandparent(Z, X), grandparent(Z, Y), X \= Y, not(sibling(X, Y)). 
second_cousin(X, Y) :- great_grandparent(Z, X), great_grandparent(Z, Y), X \= Y, not(sibling(X, Y)), not(first_cousin(X, Y)). 
first_cousin_once_removed(X, Y) :- (first_cousin(Z, X), parent(Z, Y)); (first_cousin(Z, Y), parent(Z, X)).
