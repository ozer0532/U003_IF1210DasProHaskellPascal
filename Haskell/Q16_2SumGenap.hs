-- DEFINITION AND SPECIFICATION
sumGenap :: Int -> Int -> Int
{-  sumGenap mnmenghasilkan penjumlahan seluruh bilangan genap di antara m dan n.
    Prekondisi: m dan n adalah integer positif (integer > 0) -}

-- IMPLEMENTATION
sumGenap m n
    | m > n = 0
    | mod m 2 == 1 = sumGenap (m+1) n
    | otherwise {- m <= n -} =
        m + sumGenap (m + 2) n

-- APLIKASI
-- sumGenap 2 9 = 20
-- sumGenap 4 4 = 4
-- sumGenap 5 5 = 0
-- sumGenap 8 5 = 0