PROGRAM hargaMakanan;
(* File : hargaMakanan.pas *) 
(* menentukan harga makanan berdasarkan kodenya *) 
// KAMUS
VAR
	n, i, code, result : INTEGER;

// ALGORITMA
BEGIN
	ReadLn (n);
	result := 0;
	FOR i := 1 TO n DO BEGIN
		ReadLn(code);
		IF (i MOD 2 = 0) THEN BEGIN
			result += code * 200;
		END ELSE {-i mod 2 = 1-} BEGIN
			result += code * 100;
		END;
	END;
	Write (result);
	WriteLn (' rupiah');
END.
