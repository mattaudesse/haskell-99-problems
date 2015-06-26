module Problems.H08 where

import Data.List (group)


-- |
-- Eliminate consecutive duplicates of list elements.
--
-- If a list contains repeated elements they should be replaced with a single
-- copy of the element. The order of the elements should not be changed.
--
-- >>> compress "aaaabccaadeeee"
-- "abcade"


compress :: Eq a => [a] -> [a]
compress [] = []
compress xs = foldr compress' [] xs where
    compress' x []          = [x]
    compress' x (a:as) 
        | x == a            = a:as
        | otherwise         = x:a:as 


-- |
-- (A better solution from: https://wiki.haskell.org/99_questions/Solutions/8)
--
-- Eliminate consecutive duplicates of list elements.
--
-- If a list contains repeated elements they should be replaced with a single
-- copy of the element. The order of the elements should not be changed.
--
-- >>> compress'' "aaaabccaadeeee"
-- "abcade"


compress'' :: Eq a => [a] -> [a]
compress'' = map head . group
