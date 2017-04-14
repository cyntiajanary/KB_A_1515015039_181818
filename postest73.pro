
domains
  list = integer* /* or whatever type you want to use */

predicates
  length_of(list,integer,integer) - procedure (i,o,i) /*mendeklarasikan length_of adalah list dnegtan prosedur input output*/

clauses
  length_of([], Result, Result). /*melakukan pencarian argumen yg sama dengan klausa.*/
  length_of([_|T],Result,Counter):-
	NewCounter = Counter + 1, /*menambah nilai penghitung*/
	length_of(T, Result, NewCounter)./*memanggil  klausa kedua*/

goal
  length_of([1,2,3],L,0). /* start with Counter = 0 */ /*panjang dari list yang mengandung integer 1, 2, dan 3*/
