PROGRAM max3;
{ Menentukan nilai terbesar dari 3 masukan }

{ KAMUS }
VAR
	A, B, C : integer;

{ ALGORITMA }
BEGIN
	readln(A, B, C);
	IF (A > B) AND (A > C) THEN
	BEGIN
		writeln(A);
	END ELSE IF (B > A) AND (B > C) THEN
	BEGIN
		writeln(B);
	END ELSE {(C > A) AND (C > B)}
	BEGIN
		writeln(C);
	END;
END.
