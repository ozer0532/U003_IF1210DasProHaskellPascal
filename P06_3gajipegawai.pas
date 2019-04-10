PROGRAM gajipegawai;
{ NIM/NAMA: 16518269 CHOKYI OZER }

{ KAMUS }
var
	input : INTEGER;
	N : Integer;
	G1, G2, G3 : INTEGER;
	mean : REAL;

{ ALGORITMA }
begin
	{ Validasi input }
	readln(input);
	N := 0; G1 := 0; G2 := 0; G3 := 0; mean := 0;
	while (input <> -9999) do
	begin
		if (input >= 500) then
		begin
			N := N + 1;
			if (input > 5000) then
				G1 := G1 + 1
			else if ((input > 2000) and (input <= 5000)) then
				G2 := G2 + 1
			else {input <= 2000 (input >= 500)}
				G3 := G3 + 1;
			mean := ((mean * (N-1)) + input)/N;
		end;
		readln(input);
	end;
	
	{ Output }
	if (N > 0) then
	begin
		writeln(N);
		writeln('1:', G1);
		writeln('2:', G2);
		writeln('3:', G3);
		writeln(round(mean));
	end
	else
		writeln('Data kosong');
end.
