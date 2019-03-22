{ Chokyi Ozer / 16518269 / Minggu 10 DasPro }
Program ProsesLingkaran;
{ Input: 2 buah Lingkaran }
{ Output: luas, keliling, dan hubungan lingkaran A dan B }
 
{ KAMUS }
const
        PI : real = 3.1415;
type
        { Definisi Type Koordinat }
        Koordinat = record
                       x, y : real;  { komponen koordinat kartesius }
        end;
        { Definisi Type Lingkaran }
        Lingkaran = record
                      c : Koordinat; { titik pusat lingkaran }
                      r : real;      { jari-jari, > 0 }
        end;
var
        A, B : Lingkaran; { variabel untuk lingkaran A dan B }
        { lengkapi dengan variabel yang dibutuhkan }
 
{ FUNGSI DAN PROSEDUR }
function IsRValid (r : real) : boolean;
{ Menghasilkan true saat r positif }
begin
        IsRValid := r > 0;
end;

procedure InputLingkaran (var A : Lingkaran);
{ I.S.: A sembarang }
{ F.S.: A terdefinisi sesuai dengan masukan pengguna. Pemasukan jari-jari diulangi 
        sampai didapatkan jari-jari yang benar yaitu r > 0. Pemeriksaan apakah jari-
        jari valid menggunakan fungsi IsRValid.
        Jika jari-jari tidak valid, dikeluarkan pesan kesalahan “Jari-jari harus > 0”. }
{ lengkapi kamus dan algoritma procedure InputLingkaran }
var
        x, y, r : real;
begin
        readln(x, y, r);
        A.c.x := x;
        A.c.y := y;
        while (not IsRValid(r)) do
        begin
                writeln('Jari-jari harus > 0');
                readln(r);
        end;
        A.r := r;
end;
 
function KelilingLingkaran (A : Lingkaran) : real; { lengkapi parameter dan type hasil }
{ Menghasilkan keliling lingkaran A = 2 * PI * A.r }
{ Lengkapi kamus lokal dan algoritma fungsi KelilingLingkaran }
begin
        KelilingLingkaran := 2 * PI * A.r;
end;
 
function LuasLingkaran (A : Lingkaran) : real; { lengkapi parameter dan type hasil }
{ Menghasilkan luas lingkaran A = PI * A.r * A.r }
{ Lengkapi kamus lokal dan algoritma fungsi LuasLingkaran }
begin
        LuasLingkaran := Pi * A.r * A.r;
end;
 
function Jarak (p1, p2 : Koordinat) : real;
{ Menghasilkan jarak antara P1 dan P2 }
{ Lengkapi kamus lokal dan algoritma fungsi Jarak }
begin
        Jarak := sqrt( (p2.x - p1.x) * (p2.x - p1.x) + (p2.y - p1.y) * (p2.y - p1.y));
end;

function HubunganLingkaran (A, B : Lingkaran) : integer;
{ Menghasilkan integer yang menyatakan hubungan lingkaran A dan B, yaitu:
  1 = A dan B sama;
  2 = A dan B berimpit; 
  3 = A dan B beririsan;
  4 = A dan B bersentuhan;
  5 = A dan B saling lepas }
{ Lengkapi kamus lokal dan algoritma fungsi HubunganLingkaran }
var
        r, jmlhRad : real;
begin
        r := Jarak(A.c, B.c);
        jmlhRad := A.r + B.r;
        if (r = 0) then
        begin
                if (A.r = B.r) then begin
                        HubunganLingkaran := 1;
                end else begin
                        HubunganLingkaran := 2;
                end;
        end else if (r < jmlhRad) then
        begin
                HubunganLingkaran := 3;
        end else if (r = jmlhRad) then
        begin
                HubunganLingkaran := 4;
        end else
        begin
                HubunganLingkaran := 5;
        end;
end;
 
{ ALGORITMA PROGRAM UTAMA }
begin
        writeln('Masukkan lingkaran A:');
        InputLingkaran(A); { Lengkapi dengan pemanggilan prosedur InputLingkaran untuk lingkaran A }
        writeln('Masukkan lingkaran B:');
        InputLingkaran(B); { Lengkapi dengan pemanggilan prosedur InputLingkaran untuk lingkaran B }
        writeln('Keliling lingkaran A = ', KelilingLingkaran(A):0:2); { Lengkapi dengan pemanggilan fungsi 
                                                   KelilingLingkaran untuk A }
        writeln('Luas lingkaran A = ', LuasLingkaran(A):0:2); { Lengkapi dengan pemanggilan fungsi LuasLingkaran untuk A }
        writeln('Keliling lingkaran B = ', KelilingLingkaran(B):0:2); { Lengkapi dengan pemanggilan fungsi 
                                                   KelilingLingkaran untuk B }
        writeln('Luas lingkaran B = ', LuasLingkaran(B):0:2); { Lengkapi dengan pemanggilan fungsi LuasLingkaran untuk B }
        write('A dan B adalah ');
        case (HubunganLingkaran(A, B)) of 
                1 : writeln('sama');
                2 : writeln('berimpit');
                3 : writeln('beririsan');
                4 : writeln('bersentuhan');
                5 : writeln('saling lepas');
        end;
        
        { Lengkapi dengan pemanggilan fungsi HubunganLingkaran dan mengkonversi 
              integer hasil fungsi menjadi kata-kata sbb.:
              1 = ‘sama’
              2 = ‘berimpit’ 
              3 = ‘beririsan’
              4 = ‘bersentuhan’
              5 = ‘saling lepas’ }
end. 

