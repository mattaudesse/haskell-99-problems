module Problems.H18 where

-- |
-- Extract a slice from a list.
--
-- Given two indices, i and k, the slice is the list containing the elements
-- between the i'th and k'th element of the original list (both limits
-- included). Start counting the elements with 1.
--
-- >>> slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
-- "cdefg"
--
-- >>> slice "abcdefghijk" 1 1
-- "a"
--
-- >>> slice "abcdefghijk" 0 0
-- ""
--
-- >>> slice "abcdefghijk" 5 5
-- "e"
--
-- >>> slice "abcdefghijk" 5 4
-- ""
--
-- >>> slice "abcdefghijk" 9 2
-- ""
--
-- >>> slice "abcdefghijk" 5 20
-- "efghijk"

slice :: [a] -> Int -> Int -> [a]
slice as i k
    | i < 0     = slice as 0 k
    | k < 1     = []
    | otherwise = take (k - i + 1) $ drop (i - 1) as
