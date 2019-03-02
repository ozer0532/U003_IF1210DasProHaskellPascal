-- NIM/Nama	 : 16518269 / Chokyi Ozer
-- Nama file : DeleteList.hs
-- Topik	 : Aspek Fungsi Sebagai Parameter Fungsi
-- Tanggal	 : 2 Maret 2019
-- Deskripsi : Menghapus seluruh isi list yang memenuh syarat

module DeleteList where

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
-- DEFINISI DAN SPESIFIKASI
deleteIf :: [Int] -> (Int -> Bool) -> [Int]
-- deleteList l f menghapus semua elemen l yang memenuhi syarat pada f

-- REALISASI
deleteIf l f
    | isEmpty l = []                                                -- Basis
    | otherwise = if (f (head l)) then deleteIf (tail l) f          -- Rekurens
                  else konso (head l) (deleteIf (tail l) f)

	
-- APLIKASI
-- deleteList [2,3,4,1,5,6] (\x->x>5) = [2,3,4,1,5]