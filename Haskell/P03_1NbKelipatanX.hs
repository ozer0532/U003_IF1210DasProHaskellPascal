-- NIM/Nama	 : 16518269 / Chokyi Ozer
-- Nama file : NbKelipatan.hs
-- Topik	 : Fungsi Rekursif
-- Tanggal	 : 20 Februari 2019
-- Deskripsi : Menghitung jumlah kelipatan X

module NbKelipatanX where

-- DEFINISI DAN SPESIFIKASI
nbKelipatanX :: Int -> Int -> Int -> Int
-- nbKelipatanX m n x menghitung jumlah kelipatan x pada selang [m,n]

-- REALISASI
nbKelipatanX m n x 
	| m == n 	= if (mod m x == 0) then 1								-- Basis
				  else 0
	| otherwise = if (mod m x == 0) then 1 + (nbKelipatanX (m + 1) n x) -- Rekurens
				  else (nbKelipatanX (m + 1) n x)

-- APLIKASI
-- nbKelipatanX 1 1 1 = 1
-- nbKelipatanX 1 10 2 = 5
