/***************************************************************************/
% % O progrma a seguir soluciona o seguinte quebracabeca:
% 
% Numa rua temos cinco casas. Cada uma delas pintada com uma cor 
% diferente. Em cada uma delas mora uma pessoa vinda de um pais
% diferente, que tem um anumal de estimacao diferente, uma bebida
% preferida diferente e um carro difernete.
% 
% Sabemos que:
% 
% 1- O ingles mora na casa vermelhoa. 2- O cachorro pertence ao espanhol.
% 3- Um deles prefere beber café na casa verde. 4- O ucraniano bebe cha.
% 5- A casa verde e vizinha da casa branca. 6- O dono do Audi cria caracois
% 7- O dono da mercedes mora na casa amarela. 8- O que mora na casa central
% bebe leite. 9- O noruegues mora na primeira casa a esquerda. 10- O dono do
% Volkswaguen mora ao lado do dono da raposa. 11- O da Mercedes ao lado do
% dono do cavalo. 12- O dono do Alfa Romeo bebe vinho. 13- O japones conduz
% um Honda. 14- O noruegues e vizinho da casa azul.
% 
% 	Quem e o dono da zebra?
% 	Quem bebe aggua?
% 
/***************************************************************************/
demo1:- go3(config(A,B,C,D,E)), write(A), nl, write(B), nl, write(C), nl,  write(D), nl, write(E), nl.
membro(X,[_|Y]):- membro(X,Y).
membro(X,[X|_]).
testepos(X,Y,[X|_],[Y|_]).
testepos(X,Y,[_|R],[_|S]):- testepos(X,Y,R,S).
a_direita(X,Y,[X|_], [_,Y|_]).
a_direita(X,Y,[_|R],  [_|S]) :- a_direita(X,Y,R,S).
a_esquerda(X,Y,[_,X|_], [Y|_]).
a_esquerda(X,Y,[_|R], [_|S]):- a_esquerda(X,Y,R,S).
vizinho(X,Y,Xs,Ys):- a_direita(X,Y,Xs,Ys).
vizinho(X,Y,Xs,Ys):- a_esquerda(X,Y,Xs,Ys).
go3(config(Paises,Cores,Animais,Bebidas,Carros)):-
    Paises=[noruegues,_,_,_,_], % const 9
    Cores=[_,_,_,_,_],
    Animais=[_,_,_,_,_],
    Bebidas=[_,_,leite,_,_], % const 8
    Carros=[_,_,_,_,_],
    testepos(ingles,vermelho,Paises,Cores),
    testepos(japones,honda,Paises,Carros),
    vizinho(noruegues, azul, Paises, Carros),
    a_direita(branco,verde,Cores,Cores),
    testepos(amarelo,mercedes,Cores,Carros),
    testepos(espanhol,cachorro,Paises,Animais),
    testepos(audi,caracois,Carros,Animais),
    testepos(alfaromeo,vinho,Carros,Bebidas),
    testepos(ukraniano, cha, Paises, Bebidas),
    testepos(verde,cafe,Cores,Bebidas),
    vizinho(volkswagen,raposa,Carros,Animais),
    vizinho(mercedes,cavalo,Carros,Animais),
    membro(zebra,Animais),
    membro(agua,Bebidas).
    

    
