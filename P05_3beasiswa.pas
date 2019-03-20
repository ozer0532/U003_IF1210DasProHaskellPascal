PROGRAM beasiswa;
(* File : beasiswa.pas *) 
(* menentukan kategori beasiswa dari ip dan pendapatan ortu *) 
// KAMUS
VAR
	ip, pot : REAL;

// ALGORITMA
BEGIN
	ReadLn(ip, pot);
	IF (ip >= 3.5) THEN BEGIN
		WriteLn(4);
	END ELSE IF ((ip < 3.5) AND (pot  < 1)) THEN BEGIN
		WriteLn(1);
	END ELSE IF ((ip < 3.5) AND (pot  >= 1) AND (pot < 5)) THEN BEGIN
		IF (ip >= 2) THEN BEGIN
			WriteLn(3);
		END ELSE {-ip < 2-} BEGIN
			WriteLn(2);
		END;
	END ELSE BEGIN
		WriteLn(0);
	END;
END.
