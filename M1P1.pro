PREDICATES
putra(STRING,STRING)
saudara_perempuan(STRING,STRING)
saudara_laki(STRING,STRING)
menikah(STRING,STRING)
ayah(STRING ayah,STRING putra)
kakek(STRING kakek,STRING cucu)
nondeterm ipar_perempuan(STRING,STRING)
CLAUSES
putra("Ikhsan","Bentang"). %ikhsan putra bentang
saudara_perempuan("Dini","Dina"). %dini saudara perempuan dina
saudara_laki("Adi","Lintang"). %adi saudara lakilaki lintang
menikah("Ikhsan","Dini"). %iksan menikah dengan dini
menikah("Lintang","Surga"). %lintang menikah dengan surga
ayah(A,B):-putra(B,A). %A adalah ayah B jika B adalah putra A
kakek(A,B):-ayah(A,C), ayah(C,B). %A adalah kakek B jika ayah A adalah C atau C adalah ayah B
ipar_perempuan(A,B):-menikah(A,C), saudara_perempuan(C,B). %A adalah ipar perempuan B jika A menikah dengan C atau C saudara perempuan B
ipar_perempuan(A,B):-saudara_laki(A,C), menikah(C,B). %A adalah ipar perempuan B jika A saudara laki-laki C atau C menikah dengan B
GOAL
ipar_perempuan("Ikhsan",X). %ipar perempuan ikhsa . . . .