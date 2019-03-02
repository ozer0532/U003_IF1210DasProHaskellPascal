-- NIM/Nama	 : 16518269 / Chokyi Ozer
-- Nama file : FilterList.hs
-- Topik	 : Aspek Fungsi Sebagai Parameter Fungsi
-- Tanggal	 : 2 Maret 2019
-- Deskripsi : Melakukan filter pada list

module FilterList where

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
filterList :: [Int] -> (Int -> Bool) -> [Int]
-- filterList l f menghapus semua elemen l yang tidak memenuhi syarat pada f

-- REALISASI
filterList l f
    | isEmpty l = []                                                            -- Basis
    | otherwise = if (f (head l)) then konso (head l) (filterList (tail l) f)   -- Rekurens
                  else filterList (tail l) f

	
-- APLIKASI
