PROGRAM arrayInt;
{ NIM/NAMA: 16518269 CHOKYI OZER }

{ KAMUS UMUM }
const
	NMax = 100;

type
	TabInt = record
		Tab : array [1..NMax] of integer;
		Neff : integer; { nilai efektif }
	end;

var
	T1, T2 : TabInt;

procedure BacaTabInt(var output : TabInt);
var
	i : INTEGER;
	o : TabInt;
begin
	readln(o.Neff);
	if (o.Neff > 0) then
	begin
		for i := 1 to o.Neff do
		begin
			readln(o.Tab[i]);
		end;
	end;
	output := o;
end;

function IsEqual(T1, T2 : TabInt) : Boolean;
var
	i : INTEGER;
	o : BOOLEAN;
begin
	o := TRUE;
	if (T1.Neff = T2.Neff) then
	begin
		if (T1.Neff > 0) then
		begin
			i := 1;
			while (o) and (i <= T1.Neff) do
			begin
				if (T1.Tab[i] <> T2.Tab[i]) then
					o := FALSE
				else
					i := i + 1;
			end;
		end;
	end
	else
		o := FALSE;
	
	IsEqual := o;
end;

{ ALGORITMA }
begin
	BacaTabInt(T1);
	BacaTabInt(T2);
	if (IsEqual(T1, T2)) then
		write('Array sama')
	else
		write('Array tidak sama');
end.
