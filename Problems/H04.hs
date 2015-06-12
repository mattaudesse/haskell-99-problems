module Problems.H04 where

-- |
-- Find the number of elements of a list.
--
-- >>> myLength [123, 456, 789]
-- 3
--
-- >>> myLength "Hello, world!"
-- 13


myLength :: [a] -> Int
myLength []     = 0
myLength (_:xs) = 1 + sum [1 | _ <- xs]
