-- NIM/Nama  : 16518269/Chokyi Ozer
-- Nama file : UkuranBaju.hs
-- Topik	 : Pembuatan Keputusan
-- Tanggal	 : 6 Feb 2019
-- Deskripsi : Menentukan ukuran baju berdasarkan tinggi dan beratnya

module UkuranBaju where

-- DEFINISI DAN SPESIFIKASI
ukuranBaju :: Int -> Int-> Int
-- ukuranBaju t b menentukan kode ukuran baju dengan:
-- 		M bila t <= 150 dan b ∈ ℤ
-- 		XL bila t > 170 dan 60 < b ≤ 80
-- 		L bila 150 < 5 ≤ 170 dan b ≤ 80
-- 		XL bila 150 < 5 ≤ 170 dan b > 80
-- 		L bila t > 170 dan b ≤ 60

-- REALISASI
ukuranBaju t b
	| t <= 150 = 1
	| (t > 170) && (b > 60) && (b <= 80) = 3
	| (t > 150) && (t <= 170) && (b <= 80) = 2
	| (t > 150) && (t <= 170) && (b > 80) = 3
	| (t > 170) && (b <= 60) = 2
	| otherwise = 4

--APLIKASI
--ukuranBaju 160 75
--ukuranBaju 145 45
