{ Chokyi Ozer 16518269 }

unit udatamhs;
{ Unit ini berisi fungsi & prosedur untuk mengelola data mahasiswa }

 
{ DEKLARASI TYPE FUNGSI DAN PROSEDUR }
interface

    const
        NMax = 100;

    type
        dataMhs  = record
            NIM : String;
            KdKul : String;
            Nilai : Integer;
        end;

        tabNilaiMhs = record
            TMhs : array [1..NMax] of dataMhs;
            Neff : Integer; { 0..100 }
        end;


    { DEKLARASI FUNGSI DAN PROSEDUR }
    function EOP (rek : dataMhs) : boolean;
    { Menghasilkan true jika rek = mark }

    procedure LoadDataNilai (filename : string; var T : tabNilaiMhs);
    { I.S. : filename terdefinisi, T sembarang }
    { F.S. : Tabel T terisi nilai mahasiswa dengan data yang dibaca
             dari file dg nama = filename
             T.Neff = 0 jika tidak ada file kosong;
             T diisi dengan seluruh isi file atau sampai T penuh. }

    procedure UrutNIMAsc (var T : tabNilaiMhs);
    { I.S. : T terdefinisi; T mungkin kosong }
    { F.S. : Isi tabel T terurut membesar menurut NIM. T tetap jika T kosong. }
    { Proses : Gunakan salah satu algoritma sorting yang diajarkan di kelas.
               Tuliskan nama algoritmanya dalam bentuk komentar. }

    procedure HitungRataRata (T : tabNilaiMhs);
    { I.S. : T terdefinisi; T mungkin kosong }
    { F.S. : Menampilkan nilai rata-rata setiap mahasiswa yang ada dalam tabel dengan format:
             <NIM>=<rata-rata>
             Nilai rata-rata dibulatkan ke integer terdekat. Gunakan fungsi round.
             Jika tabel kosong, tuliskan "Data kosong" }
    { Proses : Menggunakan ide algoritma konsolidasi tanpa separator pada file
               eksternal, hanya saja diberlakukan pada tabel. }

    procedure SaveDataNilai (filename : string; T : tabNilaiMhs);
    { I.S. : T dan filename terdefinisi; T mungkin kosong }
    { F.S. : Isi tabel T dituliskan pada file dg nama = filename }


{ IMPLEMENTASI FUNGSI DAN PROSEDUR }
implementation

    function EOP (rek : dataMhs) : Boolean;
    begin
        EOP := (rek.NIM = '99999999') and 
               (rek.KdKul = 'XX9999') and 
               (rek.Nilai = -999);
    end;

    procedure LoadDataNilai (filename : String; var T : tabNilaiMhs);
    var
        f : File of dataMhs;
        dat : dataMhs;
    begin
        Assign(f, filename);
        Reset(f);
        T.Neff := 0;
        Read(f, dat);
        while (not EOP(dat)) do
        begin
            T.Neff := T.Neff + 1;
            T.TMhs[T.Neff] := dat;
            Read(f, dat);
        end;
        Close(f);
    end;

    procedure UrutNIMAsc (var T : tabNilaiMhs);
    var
        temp : dataMhs;
        i, j : Integer;
        done : Boolean;
    begin
        if (T.Neff > 0) then
            { Bubble Sort }
            i := 0;
            done := False;
            while (i < T.Neff) and (not done) do
            begin
                done := True;
                for j := T.Neff downto 2 do
                if (T.TMhs[j].NIM < T.TMhs[j-1].NIM) then
                begin
                    temp := T.TMhs[j-1];
                    T.TMhs[j-1] := T.TMhs[j];
                    T.TMhs[j] := temp;
                    done := False;
                end;
                i := i + 1;
            end;
    end;

    procedure HitungRataRata (T : tabNilaiMhs);
    var
        current : String;
        sum, count : Integer;
        i : Integer;
    begin
        if (T.Neff > 0) then
        begin
            current := T.TMhs[1].NIM;
            sum := T.TMhs[1].Nilai; count := 1;
            for i := 2 to T.Neff do
            begin
                if (T.TMhs[i].NIM <> current) then     // Section Baru
                begin
                    Write(current);
                    Write('=');
                    WriteLn(Round(sum/count));

                    current := T.TMhs[i].NIM;
                    sum := T.TMhs[i].Nilai; count := 1;
                end 
                else
                begin
                    sum := sum + T.TMhs[i].Nilai;
                    count := count + 1;
                end;
            end;
            Write(current);
            Write('=');
            WriteLn(Round(sum/count));
        end
        else
            WriteLn('Data kosong');
    end;

    procedure SaveDataNilai (filename : string; T : tabNilaiMhs);
    const
        mark : dataMhs = (
            NIM : '99999999';
            KdKul : 'XX9999';
            Nilai : -999;
        );
    var
        f : File of dataMhs;
        i : Integer;
    begin
        Assign(f, filename);
        Rewrite(f);
        if (T.Neff > 0) then
            for i := 1 to T.Neff do
            begin
                Write(f, T.TMhs[i]);
            end;
        Write(f, mark);
        Close(f);
    end;

end.