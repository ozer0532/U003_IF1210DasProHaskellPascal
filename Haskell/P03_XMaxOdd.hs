-- DESCRIPTION
module MaxOdd where

-- DEFINITIONS AND SPECIFICATION
consolidateO :: Int -> [Int] -> [Int]
-- consolidateO (item) (list) appends item to the front of list.
consolidateO item list = [item] ++ list

consolidateDot :: [Int] -> Int -> [Int]
-- consolidateDot (list) (item) inserts item to the back of list.
consolidateDot list item = list ++ [item]

isEmpty :: [Int] -> Bool
-- isEmpty (list) checks if the list is empty.
isEmpty list = null list

isSizeOne :: [Int] -> Bool
-- isSizeOne (list) checks if the list is a length of one.
isSizeOne list = (length list) == 1

maxOdd :: [Int] -> (Int, Int)
-- maxOdd (list) outputs a tuple containing the mode of odd items in list and its frequency. 
-- When two or more items are qualified, the function outputs the first item to appear on the list.
-- It there are no odd items in list, the function outputs (-1, 0).

removeEven :: [Int] -> [Int]
-- removeEven (list) removes all even entries on list.

removeItem :: Int -> [Int] -> [Int]
-- removeItem item list removes all item entries from list

countNumberOf :: Int -> [Int] -> Int
-- countNumberOf item list counts the entries of item inside list

findMode :: [Int] -> Int
-- findMode (list) outputs the mode of odd items in list. 
-- When two or more items are qualified, the function outputs the first item to appear on the list.
-- It there are no odd items in list, the function outputs -1.

-- IMPLEMENTATION
maxOdd list = let 
                maxItem = findMode (removeEven list)
            in 
                (maxItem, (countNumberOf maxItem list))
-- maxOdd removes all even numbers to simplify calculations

removeEven list
    | isEmpty list              = list                                                  -- Base
    | mod (head list) 2 == 0    = removeEven (tail list)                                -- Reccurrence
    | otherwise                 = consolidateO (head list) (removeEven (tail list))

removeItem item list
    | isEmpty list              = list                                                  -- Base
    | (head list == item)       = removeItem item (tail list)                           -- Reccurrence
    | otherwise                 = consolidateO (head list) (removeEven (tail list))

countNumberOf item list
    | isEmpty list  = 0                                                                             -- Base
    | otherwise     = (if ((head list) == item) then 1 else 0) + (countNumberOf item (tail list))   -- Reccurrence

findMode list = if (isEmpty list)                                           -- Base
    then -1
    else let                                                                -- Reccurrence
            headOccurence = countNumberOf (head list) list                  -- Look at the first entry
            maxItem = findMode (removeItem (head list) list)                -- Look at the mode of previous entries
            maxOccurence = countNumberOf maxItem list 
        in
            if (headOccurence >= maxOccurence) then head list               -- Compare occurences
            else maxItem