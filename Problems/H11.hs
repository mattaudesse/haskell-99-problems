module Problems.H11 where

import Problems.H09 (pack)

-- |
-- Modified run-length encoding.
--
-- Modify the result of problem 10 in such a way that if an element has no
-- duplicates it is simply copied into the result list. Only elements with
-- duplicates are transferred as (N E) lists.
--
-- >>> encodeModified "aaaabccaadeeee"
-- [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']

data RunLength a = Multiple Int a | Single a deriving Show


encodeModified :: Eq a => [a] -> [RunLength a]
encodeModified xs = [runLength x | x <- pack xs] where
    runLength y 
        | length y == 1 = Single $ head y
        | otherwise     = Multiple (length y) $ head y
