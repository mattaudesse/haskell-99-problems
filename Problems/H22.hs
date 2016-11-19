module Problems.H22 where

-- |
-- Create a list containing all integers within a given range.
--
-- >>> range 4 9
-- [4,5,6,7,8,9]

range :: Int -> Int -> [Int]
range a b = [a..b]
