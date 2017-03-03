predicates
nondeterm mau_shopping(symbol,symbol).
nondeterm orang(symbol).
nondeterm baju(symbol).
suka(symbol,symbol).
dijual(symbol).

clauses
mau_shopping(X,Y):-
orang(X),
baju(Y),
suka(X,Y),
dijual(Y).

orang(barbie).
orang(rapunzel).
orang(happy).

baju(kaos).
baju(kemeja).

suka(barbie,baca).
suka(rapunzel,kemeja).
suka(happy,kaos).

dijual(kaos).
dijual(kemeja).
dijual(motor).

goal
mau_shopping(Siapa,Apa).