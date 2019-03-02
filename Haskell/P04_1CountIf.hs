-- NIM/Nama	 : 16518269 / Chokyi Ozer
-- Nama file : CountIf.hs
-- Topik	 : Aspek Fungsi Sebagai Parameter Fungsi
-- Tanggal	 : 2 Maret 2019
-- Deskripsi : Menghitung isi list yang memenuhi syarat

module CountIf where

-- DEFINISI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e] -}

-- DEFINISI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
konsDot li e = li ++ [e]

-- DEFINISI SELEKTOR
-- head :: [Int] -> Int
-- tail :: [Int] -> [Int]
-- last :: [Int] -> Int
-- init :: [Int] -> [Int]

-- DEFINISI PREDIKAT
isEmpty :: [Int] -> Bool
isEmpty l = null l

isOneElmt :: [Int] -> Bool
isOneElmt l = (length l) == 1 







-- DEFINISI DAN SPESIFIKASI
countIf :: [Int] -> (Int -> Bool) -> Int
-- countIf l f menghitung jumlah item l yang memenuhi syarat pada f

-- REALISASI
countIf l f
	| isEmpty l = 0															--Basis
	| otherwise = (if (f (head l)) then 1 else 0) + countIf (tail l) f		--Rekurens

	
-- APLIKASI
