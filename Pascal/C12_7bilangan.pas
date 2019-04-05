(* Chokyi Ozer / 16518269 / Minggu 12 DasPro *)
program bilangan;
(* Input: jumlah data, nilai data, perintah tambahan *)
(* Output: index dan nilai data pertama yang memenuhi kriteria *)

(* Kamus *)
type
    arrayInteger = record
        T : array [1..100] of Integer;
        Neff : Integer; (* Range 1 - 100 *)
    end;
var
    arr : arrayInteger;
    X : Integer;
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
    ReadLn(X);

    i := 1;
    stop := false;
    if (x = 0) then
    begin
        while (not(stop)) and (i <= arr.Neff) do
        begin
            if (arr.T[i] = 0) then
                stop := true
            else
                i := i + 1;
        end;
        if (stop) then
        begin
            Writeln(i);
        end
        else
            WriteLn('Tidak ada 0');
    end
    else if (x = 1) then
    begin
        while (not(stop)) and (i <= arr.Neff) do
        begin
            if (arr.T[i] > 0) then
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
            WriteLn('Tidak ada positif');
    end 
    else if (x = -1) then
    begin
        while (not(stop)) and (i <= arr.Neff) do
        begin
            if (arr.T[i] < 0) then
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
            WriteLn('Tidak ada negatif');
    end 
    else
    begin
        WriteLn('Tidak diproses');
    end;
    
end.