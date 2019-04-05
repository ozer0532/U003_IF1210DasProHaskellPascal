(* Chokyi Ozer / 16518269 / Minggu 12 DasPro *)
program nilai;
(* Input: nilai mahasiswa *)
(* Output: jumlah mahasiswa total, lulus, gagal, rata-rata *)

(* Kamus *)
const
    mark = -9999;

var
    input : real;
    total, lulus, gagal : integer;
    sum, mean : real;

function IsWithinRange (X : real; min, max : real) : boolean;
(* Menghasilkan true jika min <= X <= max, menghasilkan false jika tidak *)
begin
    IsWithinRange := (min <= X) and (X <= max);
end;

(* Algoritma *)
begin
    (* Proses sekuensial dengan mark - penanganan kasus kosong*)
    readln(input);
    if (input = mark) then
        writeln('Data nilai kosong')
    else (* input <> mark *)
    begin
        sum := 0; total := 0;
        lulus := 0; gagal := 0;
        repeat
            if (IsWithinRange(input, 0.0, 100.0)) then
            begin
                sum := sum + input;
                total := total + 1;
                if (IsWithinRange(input, 40.0, 100.0)) then
                begin
                    lulus := lulus + 1;
                end
                else
                begin
                    gagal := gagal + 1;
                end;
            end;
            readln(input);
        until (input = mark);
        
        WriteLn(total); 
        if (total <> 0) then
        begin
            mean := sum / total;
            Writeln(lulus);
            WriteLn(gagal);
            Writeln(mean:0:2);
        end;
    end;

end.