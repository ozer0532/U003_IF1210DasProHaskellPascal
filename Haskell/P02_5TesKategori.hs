-- NIM/Nama  : 16518269/Chokyi Ozer
-- Nama file : TesKategori.hs
-- Topik	 : Pembuatan Keputusan
-- Tanggal	 : 6 Feb 2019
-- Deskripsi : Menentukan dapatnya seseorang memasuki katergori tersebut
--			   berdasarkan tinggi dan beratnya

module TesKategori where

-- DEFINISI DAN SPESIFIKASI
tesKategori :: Int -> Int-> Int -> Bool
-- tesKategori t b k menentukan bolehnya menaiki kategori k

-- REALISASI
{-
tesKategori t b k
	| ((k == 2) || (k == 3) || (k == 4)) && (t > 100) && (b <= 150) = True
	| (t <= 100) && (b <= 150) && (k == 1) = True
	| (t <= 100) && (b <= 150) && (b > 30) && (k == 2) = True
	| (b > 150) && (t <= 100) && (k == 2) = True
	| (b > 150) && (t > 100) && (t <= 200) && ((k == 2) || (k == 3)) = True
	| otherwise = (k == 0)
	-}
tesKategori t b k
	| (k==1)&&(t<=100)&&(b<=150) = True
	| (k==2)&&(((t<=100)&&(30<b)&&(b<=150))||((b>150)&&(t<=200))) = True
	| (k==3)&&(((b>150)&&(100<t)&&(t<=200))) = True
	| (k/=1)&&(k/=0)&&(t>100)&&(b<=150) = True
	| (t>100)&&(b<=150)&&(k==0) = False
	| otherwise = k==0
-- APLIKASI
-- tesKategori 120 80 1
-- tesKategori 120 80 4
-- tesKategori 201 160 0
