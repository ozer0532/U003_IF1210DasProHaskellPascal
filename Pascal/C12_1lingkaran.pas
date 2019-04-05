(* Chokyi Ozer / 16518269 / Minggu 12 DasPro *)
program lingkaran;
(* Input: jari-jari *)
(* Output: luas lingkaran *)

(* Kamus *)
const
    pi : real = 3.1415;

var
    r : integer;

(* Algoritma *)
begin
    readln(r);

    if ( r > 0 ) then
    begin
        writeln((pi * r * r):0:2);
    end
    else (* r <= 0 *)
    begin
        writeln('Jari-jari harus > 0');
    end;
end.