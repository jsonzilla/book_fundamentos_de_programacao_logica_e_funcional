maxx(X,Y,Y) :- X =< Y.
maxx(X,Y,X).
max(X,Y,Y) :- X =< Y,!.
max(X,Y,X).

