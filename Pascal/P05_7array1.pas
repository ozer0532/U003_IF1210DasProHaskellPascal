PROGRAM array1;
(* File : array1.pas *) 
(* mengeluarkan nilai positif/negatif/nol *) 
// KAMUS
VAR
	n, i, k, count : INTEGER;
	numbers : ARRAY [1..100] OF INTEGER;

// ALGORITMA
BEGIN
	// input
	ReadLn (n);
	IF (n = 0) THEN BEGIN
		WriteLn('Tidak ada bilangan')
	END ELSE BEGIN
		FOR i := 1 TO n DO BEGIN
			ReadLn(numbers[i]);
		END;
		ReadLn(k);
		
		
		// output count
		count := 0;
		FOR i := 1 TO n DO BEGIN
			IF ((k = 1) AND (numbers[i] > 0)) THEN BEGIN
				count += 1;
			END ELSE IF ((k = -1) AND (numbers[i] < 0)) THEN BEGIN
				count += 1;
			END ELSE IF ((k = 0) AND (numbers[i] = 0)) THEN BEGIN
				count += 1;
			END;
		END;
		WriteLn(count);
		
		//output others
		FOR i := 1 TO n DO BEGIN
			IF ((k = 1) AND (numbers[i] > 0)) THEN BEGIN
				WriteLn(numbers[i]);
			END ELSE IF ((k = -1) AND (numbers[i] < 0)) THEN BEGIN
				WriteLn(numbers[i]);
			END;
		END;
	END;
END.
