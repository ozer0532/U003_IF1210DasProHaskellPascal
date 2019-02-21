-- NIM/Nama	 : 16518269 / Chokyi Ozer
-- Nama file : InfiNilaiMaks.hs
-- Topik	 : List
-- Tanggal	 : 20 Februari 2019
-- Deskripsi : Memberikan informasi mengenai input nilai

module InfoNilaiMaks where



-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
   e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Int] -> Int
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Int] -> [Int]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 






-- DEFINISI DAN SPESIFIKASI
infoNilaiMaks :: [Int] -> (Int, Int)
-- infoNilaiMaks l mengoutput tuple (jumlah lulus, nilai tertinggi)
cekNilaiMaks :: [Int] -> Int
-- cekNilaiMaks l menghasilkan nilai maksimum pada l
cekJumlahLolos :: [Int] -> Int
-- cekJumlahLolos l mengoutput jumlah nilai > 75
max2 :: Int -> Int -> Int
-- max2 a b menentukan nilai maks antara a dan b

-- REALISASI
infoNilaiMaks l = ((cekJumlahLolos l), (cekNilaiMaks l))

cekNilaiMaks l
	| isOneElmt l 	= head l											--Basis
	| otherwise		= max2 (head l) (cekNilaiMaks (tail l))             --Rekurens

cekJumlahLolos l
	| isOneElmt l 	= if (head l >= 75) then 1
					  else 0
	| otherwise		= (if (head l >= 75) then 1 else 0) + (cekJumlahLolos (tail l))

max2 a b
    | a > b = a
    | otherwise = b

-- APLIKASI
-- infoNilaiMaks [0,75,89,46,100,56] = (3,100)
-- infoNilaiMaks [7,8,9,10] = (0,10)
