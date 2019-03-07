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
nilaiEkstrim :: [Int] -> (Int, Int)
trunc :: [Int] -> Int -> [Int]
splitList :: [Int] -> ([Int],[Int])
insSorted :: Int -> [Int] -> [Int]

-- IMPLEMENTATION
nilaiEkstrim l
    | isOneElmt l = (head l, head l)                        -- BASE
    | otherwise =
        let (min, max) = nilaiEkstrim (tail l)              -- RECURRENCE
        in
            if (head l > max) then (min, head l)            
            else if (head l < min) then (head l, max)
            else (min, max)

trunc l i
    | i == 1 = [head l]                                     -- BASE
    | isEmpty l = []
    | otherwise = konso (head l) (trunc (tail l) (i-1))     -- RECCURRENCE

splitList l
    | isEmpty l = ([], [])                                  -- BASE
    | isOneElmt l = ([head l], [])
    | otherwise =                                           -- RECC
        let (lfront, lback) = splitList (init (tail l))
        in (konso (head l) lfront, konsDot lback (last l))

insSorted x l
    | x < head l = konso x l
    | isEmpty l = [x]
    | otherwise = konso (head l) (insSorted x (tail l))

-- APPLICATION
-- nilaiEkstrim [3,2,6,5,8,0,1,2,12,56,44,3,28] = (0,56)
-- trunc [3,2,6,5,8] 3 = [3,2,6]
-- splitList [3,2,6,5,8] = ([3,2,6],[5,8])
-- insSorted 4 [2,3,5,6] = [2,3,4,5,6]