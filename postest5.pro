DOMAINS 

nama = orang(symbol,symbol) /* (Pertama , Kedua) */ 

hari_lahir = tanggal_lahir(integer,symbol,integer) /* (Hari, Bulan, Tahun) */

 telepon = symbol /* Nomor telepon */ 
 
 /*section domain tersebut adalah section yang dipakai untuk menyatakan tipe data dari objek yg ada.  
 pada "nama" ada 2 objek yg memiliki tipe data yaitu symbol. sedangkan "hari_lahir" ada 3 objek yg mempunyai tipe data yaitu integer dan symbol.
 lalu pada "telepon" objeknya hanya memiliki tipe data symbol */

PREDICATES 

nondeterm daftar_telepon(nama,symbol,hari_lahir) yang_ulangtahun_bulan_ini konversi_bulan(symbol,integer) cek_bulan_ulang_tahun(integer,hari_lahir) cetak_orang(nama) 

write("**** Daftar Orang Yang Ulang Tahun Bulan Ini ****"),nl, 

write(" Nama Pertama\t\t Nama Kedua\n"), write("******************************************************"),nl, date(_, Bulan_ini, _), /* Ambil bulan pada sistem komputer */ daftar_telepon(Orang, _, Tanggal), 

cek_bulan_ulang_tahun(Bulan_ini, Tanggal), cetak_orang(Orang), 
fail. 

yang_ulangtahun_bulan_ini:-

write("\n\n Tekan sembarang tombol..."),nl, readchar(_).

cetak_orang(orang(Pertama,Kedua)):-write(" ",Pertama,"\t\t\t ",Kedua),nl.

cek_bulan_ulang_tahun(Bul,tanggal_lahir(_,Bulan,_)):-konversi_bulan(Bulan,Bulan1),

Bul = Bulan1.

daftar_telepon(orang(erwin,effendy),"767-8463",tanggal_lahir(3,jan,1955)). 
daftar_telepon(orang(pramudya,kurniawan),"438-8400",tanggal_lahir(5,feb,1985)). 
daftar_telepon(orang(kusdiar,prihatin),"555-5653",tanggal_lahir(3,mar, 1935)). 
daftar_telepon(orang(ui,yansen),"767-2223",tanggal_lahir(29,apr,1951)).
 daftar_telepon(orang(roland,hutagalung),"555-1212",tanggal_lahir(12,may,1962)).
  daftar_telepon(orang(andi,nuruddin),"438-8400",tanggal_lahir(17,jun,1980)). 
  daftar_telepon(orang(syarif,musadek),"767-8463",tanggal_lahir(20,jun,1986)).
   daftar_telepon(orang(lidya,widyawati),"555-5653",tanggal_lahir(16,jul,1981)).
    daftar_telepon(orang(yusida,andriani),"767-2223",tanggal_lahir(10,aug,1981)).
     daftar_telepon(orang(slamet,riyadi),"438-8400",tanggal_lahir(25,sep,1981)).
      daftar_telepon(orang(nur,harjanto),"438-8400",tanggal_lahir(20,oct,1952)).
       daftar_telepon(orang(dian,marlini),"555-1212",tanggal_lahir(9,nov,1984)).
        daftar_telepon(orang(teguh,heni),"767-2223",tanggal_lahir(15,nov,1987)). 
        daftar_telepon(orang(eka,ardiyanti),"438-8400",tanggal_lahir(31,dec,1981)).

konversi_bulan(jan, 1).
 konversi_bulan(feb, 2). 
 konversi_bulan(mar, 3). 
 konversi_bulan(apr, 4).
  konversi_bulan(may, 5).
   konversi_bulan(jun, 6).
    konversi_bulan(jul, 7).
     konversi_bulan(aug, 8).
      konversi_bulan(sep, 9).
       konversi_bulan(oct, 10). 
       konversi_bulan(nov, 11).
        konversi_bulan(dec, 12).
/*pada clausa akan dilakukan perintah yg dipakai untuk mencari tujuan/goal. perintah write berfungsi untuk menampilkan tulisan pada goal. 
perintah date digunakan untuk mengambil data bulan pada komputer. 
perintah daftar telepon digunakan untuk mencari objek orang dan objek tanggal.cek_bulan_ulangtahun(Bulan_ini,Tanggal)digunakan untuk mengecek siapa yang akan berulang tahun dibulan ini dengan cara mencocokkkan objek yang berada dalam predicate date dan objek dalam  predicate daftar_telepon. 
Cetak orang(nama digunakan untuk mencetak nama orang yang berulang tahun bulan ini.
 Readchar yang ada dalam  cluses yang_ulang_tahun_bulan_ini digunakan untuk membacakembali goal sehingga tanpa menekan sembarang tombol maka goal tidak bisa dihilangkan atau ditutup(diclose).
 cetak_orang(orang(Pertama,Kedua)) digunakan  untuk menampilkan nama orang yang berulang tahun pada bulan ini. 
Tanda /t digunakan untuk membuat tab pada goal dan nl digunakan untuk membuat baris baru. 
Cek_bulan_ulang_tahun(Bul,tanggal_lahir(_,Bulan,_)) digunakan untuk perumpamaan yang nanti perumpamaan tersebut akan dicari dengan menggunakan perintah konversibulan(Bulan,Bulan1).*/
GOAL yang_ulangtahun_bulan_ini.
/*
Daftar _telepon diatas memuat tentang data yang diinputkan dan yang akan dicek sehingga ditemukan data yang ssuai dengan goal yang diminta. 
Konversi bulan digunakan untuk mengkonversi bulan menjadi angka yang berurutan misal jan(januari) jika dikonversi  maka akan menjadi angka 1 karena januari adalah bulan pertama/satu.
Goal digunakan sebagai perintah untuk mencari siapa saja yang ulang tahunnya pada bulan ini.*/