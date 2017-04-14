
domains
  list = integer* /* or whatever type you want to use */

predicates
  length_of(list,integer) procedure (i,o)- /*mendeskripsikan isi length_of adalah list dan tipe data integer dg procedure input output*/
  

clauses
  length_of([], 0). /*pencarian pernyataan yg sama dg clausa.*/
  length_of([_|T],L):- 
	length_of(T,TailLength),/*memanggil clausa kedua dengan list yg elemennya kurang karne list berikutnya akan menggunakan tail dr lis sebelumnya */
	L = TailLength + 1. /*menambah perhitungan panjang list*/

goal
  length_of([1,2,3],L). /*panjang dari list yang mengandung integer 1,2, dan 3 */

