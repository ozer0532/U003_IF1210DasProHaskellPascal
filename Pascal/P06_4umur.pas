PROGRAM umur;
{ NIM/NAMA: 16518269 CHOKYI OZER }

{ KAMUS }
var
	mn, mx, i : INTEGER;
	TUmur : array [1..20] of INTEGER;

{ ALGORITMA }
begin
	{ BLOK INPUT }
	readln(TUmur[1]);
	mn := TUmur[1];
	mx := TUmur[1];
	for i := 2 to 20 do
	begin
		readln(TUmur[i]);
		if (TUmur[i] > mx) then
			mx := TUmur[i]
		else if (TUmur[i] < mn) then
			mn := TUmur[i];
	end;
	
	{ BLOK OUTPUT }
	for i := 1 to 20 do
	begin
		writeln('[P', i, ']', TUmur[i]);
	end;
	writeln('Tertinggi = ', mx);
	writeln('Terendah = ', mn);
end.
