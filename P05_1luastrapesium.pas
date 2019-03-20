PROGRAM luastrapesium;
(* File : luastrapesium.pas *) 
(* menghitung luas trapesium dari tinggi, dan panjang sisi sejajar *) 
// KAMUS
VAR
	t, s1, s2 : REAL;

// ALGORITMA
BEGIN
	ReadLn(t, s1, s2);
	WriteLn((0.5 * t * (s1 + s2)):0:2);
END.
