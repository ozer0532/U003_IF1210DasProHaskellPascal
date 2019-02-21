-- NIM/Nama  : 16518269/Chokyi Ozer
-- Nama file : KonversiSuhu.hs
-- Topik	 : Ekspresi Dasar
-- Tanggal	 : 6 Feb 2019
-- Deskripsi : Mengkonversi suhu dari Celcius

module KonversiSuhu where

-- DEFINISI DAN SPESIFIKASI
konversiSuhu :: Float -> Char -> Float
-- LuasLingkaran t k mengubah t°C menjadi satuan k
-- k = <R(Reamur)|F(Farenheit)|K(Kelvin)>

-- REALISASI
konversiSuhu t k
	| k == 'R' = 0.8 * t
	| k == 'F' = (1.8 * t) + 32
	| k == 'K' = t + 273.15

-- APLIKASI
-- konversiSuhu 25 ‘R’
-- konversiSuhu 37 ‘F’
-- konversiSuhu (-30) ‘K’
