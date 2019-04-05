(* Chokyi Ozer / 16518269 / Minggu 12 DasPro *)
program suhu;
(* Input: 20 nilai suhu  *)
(* Output: 20 nilai suhu + index, nilai tertinggi, nilai terendah *)

(* Kamus *)
type
    Tsuhu_array = array [1..20] of integer;
var
    suhu_array : Tsuhu_array;
    min, max : integer;
    i : integer;

function max20(arr : Tsuhu_array): Integer;
(* Output max dari 20 nilai *)
var
    i : Integer;
    max : Integer;
begin
    max := 0;
    for i := 1 to 20 do
    begin
        if (max < arr[i]) then
            max := arr[i];
    end;
    max20 := max;
end;

function min20(arr : Tsuhu_array): Integer;
(* Output min dari 20 nilai *)
var
    i : Integer;
    min : Integer;
begin
    min := arr[1];
    for i := 2 to 20 do
    begin
        if (min > arr[i]) then
            min := arr[i];
    end;
    min20 := min;
end;

(* Algoritma *)
begin
    (* Blok input *)
    for i := 1 to 20 do
    begin
        ReadLn(suhu_array[i]);
    end;
    (* Blok output *)
    for i := 1 to 20 do
    begin
        Write('[H');
        Write(i);
        Write(']');
        WriteLn(suhu_array[i]);
    end;

    min := min20(suhu_array); 
    max := max20(suhu_array);
    Write('Tertinggi = ');
    WriteLn(max);
    Write('Terendah = ');
    WriteLn(min);
end.