/* Family tree program. */

child(X,Y) :- parent(Y,X).
spouse(X,Y) :- child(P,X), child(P,Y).
husband(X,Y) :- male(X), spouse(X,Y).
wife(X,Y) :- female(X), spouse(X,Y).
son(X,Y) :- male(X), child(X,Y).
daughter(X,Y) :- female(X), child(X,Y).
mother(X,Y) :- female(X), parent(X,Y).
father(X,Y) :- male(X), parent(X,Y).
sibling(X,Y) :- parent(P,X), parent(P,Y), X\=Y.
brother(X,Y) :- male(X), sibling(X,Y).
sister(X,Y) :- female(X), sibling(X,Y).
grandmother(X,Y) :- mother(X,P), parent(P,Y).
grandfather(X,Y) :- father(X,P), parent(P,Y).
grandson(X,Y) :- son(X,P), parent(Y,P).
granddaughter(X,Y) :- daughter(X,P), parent(Y,P).
aunt(X,Y) :- sister(X,P), parent(P,Y).
aunt(X,Y) :- wife(X,P), sibling(P,Q), parent(Q,Y).
uncle(X,Y) :- brother(X,P), parent(P,Y).
uncle(X,Y) :- husband(X,P), sibling(P,Q), parent(Q,Y).
niece(X,Y) :- daughter(X,P), sibling(P,Y).
niece(X,Y) :- daughter(X,P), sibling(P,Q), spouse(Q,Y).
nephew(X,Y) :- son(X,P), sibling(P,Y).
nephew(X,Y) :- son(X,P), sibling(P,Q), spouse(Q,Y).
cousin(X,Y) :- parent(P,X), sibling(P,Q), parent(Q,Y).
matGrandma(X,Y) :- mother(X,P), mother(P,Y).
patGrandma(X,Y) :- mother(X,P), father(P,Y).
matGrandpa(X,Y) :- father(X,P), mother(P,Y).
patGrandpa(X,Y) :- father(X,P), father(P,Y).

male(john).
male(brian).
male(robert).
male(hal).
male(jeff).
male(bobby).
male(daniel).
male(charles).
male(frank).
male(stanley).
male(sean).
male(zeke).
male(steven).
male(george).

female(jessica).
female(lana).
female(clara).
female(lillie).
female(ashley).
female(tammy).
female(lorrie).
female(melissa).
female(laura).
female(lisa).
female(annie).
female(jillian).
female(sally).
female(pam).
female(sabrina).
female(marrie).
female(doris).

parent(daniel,john).
parent(daniel,brian).
parent(daniel,jessica).
parent(charles,hal).
parent(frank,robert).
parent(frank,lana).
parent(frank,clara).
parent(frank,lillie).
parent(frank,ashley).
parent(stanley,jeff).
parent(stanley,bobby).
parent(stanley,tammy).
parent(stanley,lorrie).
parent(zeke,melissa).
parent(zeke,laura).
parent(steven,daniel).
parent(steven,charles).
parent(steven,frank).
parent(george,lisa).
parent(george,stanley).
parent(george,sean).
parent(george,annie).

parent(lisa,john).
parent(lisa,brian).
parent(lisa,jessica).
parent(jillian,hal).
parent(sally,robert).
parent(sally,lana).
parent(sally,clara).
parent(sally,lillie).
parent(sally,ashley).
parent(pam,jeff).
parent(pam,bobby).
parent(pam,tammy).
parent(pam,lorrie).
parent(annie,melissa).
parent(annie,laura).
parent(marrie,daniel).
parent(marrie,charles).
parent(marrie,frank).
parent(doris,lisa).
parent(doris,stanley).
parent(doris,sean).
parent(doris,annie).