-- NIM/Nama	 : 16518269 / Chokyi Ozer
-- Nama file : OffsetList.hs
-- Topik	 : Aspek Fungsi Sebagai Parameter Fungsi
-- Tanggal	 : 2 Maret 2019
-- Deskripsi : Mengubah isi List dengan offset

module OffsetList where

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
offsetList :: [Int] -> (Int -> Int) -> [Int]
-- countIf l offset mengubah seluruh nilai l berdasarkan aturan pada offset

-- REALISASI
offsetList l offset
    | isEmpty l = []                                                        --Basis
    | otherwise = konso (offset (head l)) (offsetList (tail l) offset)      --Rekurens

	
-- APLIKASI
