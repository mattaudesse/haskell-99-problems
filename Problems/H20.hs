module Problems.H20 where

-- |
-- Remove the K'th element from a list.
--
-- >>> removeAt 2 "abcd"
-- ('b',"acd")
--
-- >>> removeAt 1 "abcd"
-- ('a',"bcd")
--
-- >>> removeAt 4 "abcd"
-- ('d',"abc")
--
-- >>> removeAt 0 "abcd"
-- *** Exception: Out of bounds!
--
-- >>> removeAt 5 "abcd"
-- *** Exception: Out of bounds!

removeAt :: Int -> [a] -> (a, [a])
removeAt k as
    | k < 1 || k > length as = error "Out of bounds!"
    | otherwise              = (as!!(k - 1), take (k - 1) as ++ drop k as)
