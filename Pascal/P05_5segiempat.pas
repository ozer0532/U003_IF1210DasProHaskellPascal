PROGRAM segiempat;
(* File : segiempat.pas *) 
(* membentuk segiempat dengan besar n, rusuk c1, dan isi c2 *) 
// KAMUS
VAR
	n, i, j : INTEGER;
	c1, c2 : CHAR;
	outputLine : STRING;

// ALGORITMA
BEGIN
	ReadLn (n, c1, c1, c2, c2);
	IF ((n <= 0) OR (c1 = c2)) THEN BEGIN
		WriteLn('Masukan tidak valid');
	END ELSE {-(N > 0) AND (C1 != C2)-} BEGIN
		// Top-most line
		outputLine := '';
		FOR i := 1 TO n DO BEGIN
			outputLine += C1;
		END;
		WriteLn(outputLine);
		
		// Middle lines
		FOR i := 2 TO (n-1) DO BEGIN
			outputLine := C1;
			FOR j := 2 TO (n-1) DO BEGIN
				outputLine += C2;
			END;
			outputLine += C1;
			WriteLn(outputLine);
		END;
		
		// Bottom=most line
		outputLine := '';
		IF (n <> 1) THEN BEGIN
			FOR i := 1 TO n DO BEGIN
				outputLine += C1;
			END;
			WriteLn(outputLine);
		END;
	END;
END.
