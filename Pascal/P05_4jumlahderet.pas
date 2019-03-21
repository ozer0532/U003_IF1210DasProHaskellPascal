PROGRAM jumlahderet;
(* File : air.pas *) 
(* menghitung jumlah deret aritmetika *) 
// KAMUS
VAR
	n, i, result : INTEGER;

// ALGORITMA
BEGIN
	ReadLn (n);
	result := 0;
	FOR i := 1 TO n DO BEGIN
		result += i;
	END;
	WriteLn(result);
END.
