-- NIM/Nama	 : 16518269 / Chokyi Ozer
-- Nama file : KonversiSuhu.hs
-- Topik	 : Aspek Fungsi Sebagai Parameter Fungsi
-- Tanggal	 : 2 Maret 2019
-- Deskripsi : Mengkonversi suhu dengan suatu fungsi

module KonversiSuhu where

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
konversiSuhu :: Float -> (Float -> Float) -> Float
{- KonversiSuhu(t,f) dengan T merepresentasikan suhu dalam  derajat tertentu dan fungsi f yang merupakan
fungsi konversi suhu, menghasilkan konversi t ke suhu pada derajat tertentu berdasarkan fungsi f. -}

-- REALISASI
konversiSuhu t f = f t

	
-- APLIKASI
