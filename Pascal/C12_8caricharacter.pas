(* Chokyi Ozer / 16518269 / Minggu 12 DasPro *)
program caricharacter;
(* Input: jumlah data, nilai data, perintah tambahan *)
(* Output: index dan karakter pertama yang memenuhi kriteria *)

(* Kamus *)
type
    arrayChar = record
        T : array [1..100] of Char;
        Neff : Integer; (* Range 1 - 100 *)
    end;
var
    arr : arrayChar;
    CC : Char;
    i : Integer;
    stop : Boolean;

(* Kamus *)
begin
    (* Validasi input *)
    stop := False;
    repeat
        ReadLn(arr.Neff);
        if (arr.Neff > 0) and (arr.Neff <= 100) then
        begin
            stop := True;
        end
        else (* arr.Neff <= 0 or arr.Neff > 100*)
        begin
            WriteLn('Masukan salah. Ulangi!');
        end;
    until (stop);

    (* Input data *)
    for i := 1 to arr.Neff do
    begin
        ReadLn(arr.T[i]);
    end;
    ReadLn(CC);

    i := 1;
    stop := false;
    if (CC = 'S') or (CC = 's') then
    begin
        while (not(stop)) and (i <= arr.Neff) do
        begin
            if (Ord(arr.T[i]) >= 97) and (Ord(arr.T[i]) <= 122) then
                stop := true
            else
                i := i + 1;
        end;
        if (stop) then
        begin
            Write(i);
            Write(' ');
            WriteLn(arr.T[i]);
        end
        else
            WriteLn('Tidak ada huruf kecil');
    end
    else if (CC = 'L') or (CC = 'l') then
    begin
        while (not(stop)) and (i <= arr.Neff) do
        begin
            if (Ord(arr.T[i]) >= 65) and (Ord(arr.T[i]) <= 90) then
                stop := true
            else
                i := i + 1;
        end;
        if (stop) then
        begin
            Write(i);
            Write(' ');
            WriteLn(arr.T[i]);
        end
        else
            WriteLn('Tidak ada huruf besar');
    end 
    else if (CC = 'X') or (CC = 'x') then
    begin
        while (not(stop)) and (i <= arr.Neff) do
        begin
            if not(((Ord(arr.T[i]) >= 65) and (Ord(arr.T[i]) <= 90)) or ((Ord(arr.T[i]) >= 97) and (Ord(arr.T[i]) <= 122))) then
                stop := true
            else
                i := i + 1;
        end;
        if (stop) then
        begin
            Write(i);
            Write(' ');
            WriteLn(arr.T[i]);
        end
        else
            WriteLn('Semua huruf');
    end 
    else
    begin
        WriteLn('Tidak diproses');
    end;
    
end.