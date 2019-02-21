-- NIM/Nama	 : 16518269 / Chokyi Ozer
-- Nama file : CountEvenDigits.hs
-- Topik	 : Fungsi Rekursif
-- Tanggal	 : 20 Februari 2019
-- Deskripsi : Menghitung jumlah digit genap

module CountEvenDigits where

-- DEFINISI DAN SPESIFIKASI
countEvenDigits :: Int -> Int
-- countEvenDigits n menghasilkan banyaknya digit n yang 
-- merupakan bilangan genap; catatan: 0 dianggap genap

-- REALISASI
countEvenDigits n
	| n < 10	= if (mod n 2 == 0) then 1								--Basis
				  else 0
	| otherwise = if (mod n 2 == 0) then 1 + (countEvenDigits (div n 10))	--Rekurens
				  else (countEvenDigits (div n 10))

--APLIKASI
-- countEvenDigits 0 		= 1
-- countEvenDigits 4337381 	= 2
-- countEvenDigits 28961048 = 6
