PROGRAM air;
(* File : air.pas *) 
(* menentukan fasa air pada suhu tertentu *) 
// KAMUS
VAR
	t : INTEGER;

// ALGORITMA
BEGIN
	ReadLn(t);
	IF (t < 0) THEN BEGIN
		WriteLn('PADAT');
	END ELSE IF (t = 0) THEN BEGIN
		WriteLn('ANTARA PADAT-CAIR');
	END ELSE IF ((t > 0) AND (t < 100)) THEN BEGIN
		WriteLn('CAIR');
	END ELSE IF (t = 100) THEN BEGIN
		WriteLn('ANTARA CAIR-GAS');
	END ELSE {- t > 100 -} BEGIN
		WriteLn('GAS');
	END;
END.
