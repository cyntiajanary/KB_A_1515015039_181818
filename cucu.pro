 PREDICATES
nondeterm anak(symbol,symbol)
istri(symbol,symbol)
nondeterm pria(symbol)
nondeterm wanita(symbol)
usia(symbol,integer)
nondeterm cucu(symbol,symbol)
CLAUSES
cucu(X,Y):-
pria(X),
wanita(Y),
usia(X,10),
usia(Y,13).
anak(jhon,james).
anak(james,peter).
anak(sue,ann).
istri(mary,peter).
istri(ann,james).
pria(jhon).
pria(james).
pria(peter).
wanita(mary).
wanita(sue).
wanita(ann).
usia(jhon,10).
usia(sue,13).
GOAL
cucu(X,Y).