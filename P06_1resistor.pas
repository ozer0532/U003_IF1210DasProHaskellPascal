PROGRAM resistor;
{ NIM/NAMA: 16518269 CHOKYI OZER }

{ KAMUS }
VAR
	R1, R2, R3 : REAL;
	hub : CHAR;
	hasil : REAL;
	stop : BOOLEAN;

{ ALGORTITMA }
BEGIN
	stop := FALSE;
	WHILE (not(stop)) DO
	BEGIN
		readln(R1, R2, R3, hub, hub);
		IF ((R1 <= 0) or (R2 <= 0) or (R3 <= 0) or 
			not((hub = 'P') or (hub = 'S') or 
			(hub = 'p') or (hub = 's'))) THEN  { KASUS INPUT SALAH }
		BEGIN
			writeln('Masukan salah');
		END
		ELSE
		BEGIN
			stop := TRUE;
		END;
	END;
	
	{ INPUT SUDAH BENAR }
	IF ((hub = 'S') or (hub = 's')) THEN
	BEGIN
		hasil := R1 + R2 + R3;
	END
	ELSE	{(hub = 'P') or (hub = 'p'); hub tidak mungkin bernilai lain karena sudah divalidasi }
	BEGIN
		hasil := (R1 * R2 * R3)/((R1 * R2) + (R2 * R3) + (R1 * R3));
	END;
	
	writeln(hasil:0:2);
END.
