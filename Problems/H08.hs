module Problems.H08 where


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
