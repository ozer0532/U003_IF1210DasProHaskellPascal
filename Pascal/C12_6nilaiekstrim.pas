program nilaiekstrim;
(* Input: *)
(* Output: *)

(* Kamus *)
type
    arrayInteger = record
        T : array [1..100] of Integer;
        Neff : Integer; (* Range 1 - 100 *)
    end;

var
    arr : arrayInteger;
    nilaiMin, nilaiMax, i, X : Integer;

function max(arr : arrayInteger): Integer;
(* Output nilai max *)
var
    i : Integer;
    nilaiMax : Integer;
begin
    nilaiMax := arr.T[1];
    for i := 1 to arr.Neff do
    begin
        if (nilaiMax < arr.T[i]) then
            nilaiMax := arr.T[i];
    end;
    max := nilaiMax;
end;

function min(arr : arrayInteger): Integer;
(* Output nilai min *)
var
    i : Integer;
    nilaiMin : Integer;
begin
    nilaiMin := arr.T[1];
    for i := 1 to arr.Neff do
    begin
        if (nilaiMin > arr.T[i]) then
            nilaiMin := arr.T[i];
    end;
    min := nilaiMin;
end;

function cari(x : Integer; arr : arrayInteger) : Boolean;
(* Output true bila x ada di arr *)
var
    Found : Boolean;
    i : Integer;
begin
    Found := False;
    i := 1;
    while (not(Found)) and (i <= arr.Neff) do
    begin
        if (x = arr.T[i]) then
        begin
            Found := True;
        end
        else
        begin
            i := i + 1;
        end;
    end;

    cari := Found;
end;


begin
    (* Blok input *)
    ReadLn(arr.Neff);
    for i := 1 to arr.Neff do
    begin
        ReadLn(arr.T[i]);
    end;

    ReadLn(X);

    (* Blok proses *)
    nilaiMin := min(arr);
    nilaiMax := max(arr);

    (* Blok output *)
    if (cari(X, arr)) then
    begin
        if (x = nilaiMax) then
        begin
            WriteLn('maksimum');
        end;
        if (x = nilaiMin) then
        begin
            WriteLn('minimum');
        end;
        if (x <> nilaiMin) and (x <> nilaiMax) then
        begin
            WriteLn('N#A');
        end;
    end
    else
    begin
        Write(X);
        WriteLn(' tidak ada');
    end;
end.