-- LIBRARY
konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l
konsDot :: [Int] -> Int -> [Int]
konsDot l e = l ++ [e]
isEmpty :: [Int] -> Bool
isEmpty l = null l
isOneElmt :: [Int] -> Bool
isOneElmt l = length l == 1

-- DEFINITION AND SPECIFICATION
sumInteger :: Int -> Int -> (Int -> Bool) -> Int

-- IMPLEMENTATION
sumInteger m n f
    | m > n = 0
    | otherwise = (if (f m) then m else 0) + sumInteger (m + 1) n f

-- APPLICATION
-- sumInteger 2 9 (\x->mod x 2 == 0) = 20
-- sumInteger 2 9 (\x->x > 5) = 30
-- sumInteger 8 5 (\x->mod x 2 == 0) = 0
-- sumInteger 1 100 (\x-> mod x 100 = 0) = 100
-- sumInteger 1 100 (\x -> ((mod x 10 == 0) || ((mod x 2 == 1) && (mod x 5 == 0)))) = 1050
-- sumInteger 25 25 (\x -> x<10) = 0