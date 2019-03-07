-- DEFINITION AND SPECIFICATION
kuadranTranslasi :: Int -> Int -> Int -> Int -> Int
-- kuadranTranslasi x y a b mentranslasikan (x,y) dengan (a,b)
-- dan mengecek kuadran posisinya

-- IMPLEMENTATION
kuadranTranslasi x y a b =
        if (x+a > 0 && y+b > 0) then 1
        else if (x+a < 0 && y+b > 0) then 2
        else if (x+a < 0 && y+b < 0) then 3
        else if (x+a > 0 && y+b < 0) then 4
        else 0

-- APLICATION
-- kuadranTranslasi 1 2 3 4 = 1
-- kuadranTranslasi (-3) 2 1 (-4) = 3
-- kuadranTranslasi 1 1 (-1) 4 = 0
-- kuadranTranslasi 0 0 12 (-13) = 4
-- kuadranTranslasi (-2) 13 0 0 = 2