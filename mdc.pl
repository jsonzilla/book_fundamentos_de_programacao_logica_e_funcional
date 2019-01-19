mdc(X,0,X):- X>0, !.
mdc(X,Y,Z):-Y>=X,Y1 is Y - X, mdc(X,Y1,Z), !.
mdc(X,Y,Z):- mdc(Y,X,Z).
