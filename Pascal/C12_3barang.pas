(* Chokyi Ozer / 16518269 / Minggu 12 DasPro *)
program barang;
(* Input: Banyak data, nilai data *)
(* Output: Jumlah data *)

(* Kamus *)
var
    N, sum, input, i : Integer;

(* Algoritma *)
begin
    ReadLn(N);
    sum := 0;
    for i := 1 to N do
    begin
        ReadLn(input);
        sum := sum + input;
    end;
    WriteLn(sum);
end.