module Problems.H10 where

import Problems.H09 (pack)

-- |
-- Run-length encoding of a list. Use the result of problem P09 to implement
-- the so-called run-length encoding data compression method. Consecutive
-- duplicates of elements are encoded as lists (N E) where N is the number of
-- duplicates of the element E.
--
-- >>> encode "aaaabccaadeeee"
-- [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]


encode :: Eq a => [a] -> [(Int, a)]
encode xs = [(length x, head x) | x <- pack xs] 
