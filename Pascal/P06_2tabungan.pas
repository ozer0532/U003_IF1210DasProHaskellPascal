PROGRAM tabungan;
{ NIM/NAMA: 16518269 CHOKYI OZER }

{ KAMUS }
var
	N : INTEGER;
	input : INTEGER;
	sum : INTEGER;
	i : INTEGER;

{ ALGORITMA }
begin
	readln(N);
	sum := 0;
	for i := 1 to N do
	begin
		readln(input);
		sum := sum + input;
	end;
	writeln(sum);
end.
