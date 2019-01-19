demo0 :- solucione(flgm(oeste, oeste, oeste, oeste),
                   flgm(leste, leste, leste, leste), Sol),
    write_result([[fazend, lobo, galinha, milho]]), write_result(Sol), fail.
solucione(S,G,P) :- caminho(S, G, [S], P).
caminho(G,G,H,H).
caminho(S,G,H,P) :-
    mover(S,N), % moverr a um novo estado
    seguro(N),  % que seja seguro
    nao_repetido(N,H), % e nao seja repetido
    caminho(N,G,[N|H],P). % entao complete o caminho
nao_repetido(N, H) :- repetido(N, H), !, fail.
nao_repetido(_, _). % temp solution to BA index prob
repetido( X, [X|_] ).
repetido( X, [_|L] ):- repetido(X, L).
mover( flgm(X,L,G,M), flgm(Y, L, G, M) ) :- oposto(X, Y). % fazendeiro vai sozinho
mover( flgm(X,X,G,M), flgm(Y, Y, G, M) ) :- oposto(X, Y). % fazendeiro vai com o lobo
mover( flgm(X, L, X, M), flgm( Y, L, Y, M) ) :- oposto(X, Y). % fazendeiro vai com a galinha
mover( flgm(X, L, G, X), flgm(Y, L, G, Y) ) :- oposto(X, Y). %fazendeiro vai com o milho
oposto( oeste, leste ). % lados opostos sao oeste e leste
oposto( leste, oeste ). % lados opostos sao lleste e oeste
seguro( flgm(X, _, X, _) ). % fazendenro e galinha e seguro
seguro( flgm(X, X, _, X) ). % fazendeiro e lobo e milhao e seguro
write_result([]) :- nl.
write_result([X|L]) :- write(X), nl, write_result(L).
             
       
    

