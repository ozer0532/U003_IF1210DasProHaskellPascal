{ Chokyi Ozer 16518269 }

unit udatajual;

{ KAMUS }
interface
    const
        Nmax = 100;

    type
        dataJual = record
            KdKategori : String;
            KdProduk : String;
            Hasil : Integer;
        end;

        tabPenjualan = record
            TJual : array [1..Nmax] of dataJual;
            Neff : Integer; {0..100}
        end;

    function EOP (rek : dataJual) : Boolean;
    { Menghasilkan true jika rek = mark }

    procedure LoadDataJual (filename : String; var T : tabPenjualan);
    { I.S. : filename terdefinisi, T sembarang }
    { F.S. : Tabel T terisi data penjualan dengan data yang dibaca dari file dengan nama = filename.
            T.Neff = 0 jika tidak ada file kosong; 
            T diisi dengan seluruh isi file atau sampai T penuh. }

    procedure UrutKategoriAsc (var T : tabPenjualan);
    { I.S. : T terdefinisi; T mungkin kosong }
    { F.S. : Isi tabel T terurut membesar menurut KdKategoriProduk. T tetap jika T kosong. }
    { Proses : Gunakan salah satu algoritma sorting yang diajarkan di kelas.
            Tuliskan nama algoritmanya dalam bentuk komentar. }

    procedure HitungRataRata (T : tabPenjualan);
    { I.S. : T terdefinisi; T mungkin kosong. T terurut berdasarkan KdKategori. }
    { F.S. : Menampilkan KdKategori dan hasil penjualan rata-rata per KdKategori
            yang ada dalam tabel dengan format: <KdKategori>=<rata-rata>
            Nilai rata-rata dibulatkan ke integer terdekat. Gunakan fungsi round.
            Jika tabel kosong, tuliskan "Data kosong" }
    { Proses : Menggunakan ide algoritma konsolidasi tanpa separator pada
            file eksternal, hanya saja diberlakukan pada tabel. }

    procedure SaveDataJual (filename : string; T : tabPenjualan);
    { I.S. : T dan filename terdefinisi, T mungkin kosong }
    { F.S. : Isi tabel T dituliskan pada file dg nama = filename }

implementation
    function EOP (rek : dataJual) : Boolean;
    begin
        EOP := (rek.KdKategori = '99999999') and 
               (rek.KdProduk = 'XX9999') and 
               (rek.Hasil = -999);
    end;

    procedure LoadDataJual (filename : String; var T : tabPenjualan);
    var
        f : File of dataJual;
        dat : dataJual;
    begin
        Assign(f, filename);
        Reset(f);
        T.Neff := 0;
        Read(f, dat);
        while (not EOP(dat)) do
        begin
            T.Neff := T.Neff + 1;
            T.TJual[T.Neff] := dat;
            Read(f, dat);
        end;
        Close(f);
    end;

    procedure UrutKategoriAsc (var T : tabPenjualan);
    var
        temp : dataJual;
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
                if (T.TJual[j].KdKategori < T.TJual[j-1].KdKategori) then
                begin
                    temp := T.TJual[j-1];
                    T.TJual[j-1] := T.TJual[j];
                    T.TJual[j] := temp;
                    done := False;
                end;
                i := i + 1;
            end;
    end;

    procedure HitungRataRata (T : tabPenjualan);
    var
        current : String;
        sum, count : Integer;
        i : Integer;
    begin
        if (T.Neff > 0) then
        begin
            current := T.TJual[1].KdKategori;
            sum := T.TJual[1].Hasil; count := 1;
            for i := 2 to T.Neff do
            begin
                if (T.TJual[i].KdKategori <> current) then     // Section Baru
                begin
                    Write(current);
                    Write('=');
                    WriteLn(Round(sum/count));

                    current := T.TJual[i].KdKategori;
                    sum := T.TJual[i].Hasil; count := 1;
                end 
                else
                begin
                    sum := sum + T.TJual[i].Hasil;
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
    
    procedure SaveDataJual (filename : string; T : tabPenjualan);
    const
        mark : dataJual = (
            KdKategori : '99999999';
            KdProduk : 'XX9999';
            Hasil : -999;
        );
    var
        f : File of dataJual;
        i : Integer;
    begin
        Assign(f, filename);
        Rewrite(f);
        if (T.Neff > 0) then
            for i := 1 to T.Neff do
            begin
                Write(f, T.TJual[i]);
            end;
        Write(f, mark);
        Close(f);
    end;
end.