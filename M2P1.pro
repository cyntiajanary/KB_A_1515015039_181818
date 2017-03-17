PREDICATES
nondeterm dapat_membeli(symbol, symbol)
nondeterm orang(symbol)
nondeterm mobil(symbol)
nondeterm suka(symbol, symbol)
dijual(symbol)

CLAUSES
dapat_membeli(X,Y):- %X dapat membeli Y jika
orang(X), mobil(Y), suka(X,Y), dijual(Y). %X adalah orang, Y adalah mobil, X suka Y, dan Y dijual

orang(nur).	orang(yudi).	orang(dian).	orang(heni). %nur adalah orang, yudi adalah orang, dian adalah orang, heni adalah orang
mobil(atoz).	mobil(kijang). %atoz adalah mobil, kijang adalah mobil
suka(dian, atoz).	suka(yudi, pecel). %dian suka atoz, yudi suka pecel 
suka(heri, buku).	suka(nur, komputer). % heri suka buku, nur suka komputer
dijual(kijang).		dijual(atoz).	dijual(buku). %kijang dijual, atoz dijual

GOAL
dapat_membeli(Siapa,Apa). %goal yang ditampilkan adalah orang yg bisa membeli apa yg dia suka sesuai dg clausa yang ditentukan.
%suka(_,Apa). %goal yg ditampilkan adalah apa saja yang disukai orang2 yg ada pada clausa
%suka(Siapa,_). %goal yg ditampilkan adalah orang yg menyukai suatu objek yg ada pada clausa
%dapat_membeli(_,Apa). $goal yg ditampilkan adalah apa yang bisa dibeli tanpa melihat orang yg membeli
%dapat membeli(Siapa,_). $doal yg ditampilkan adalah orang yg bisa membeli tanpa melihat barang yg bisa dibeli