module Problems.H15 where

-- |
-- Replicate the elements of a list a given number of times. 
--
-- >>> repli "abc" 3
-- "aaabbbccc"
--
-- (Force positive integer n) 
-- prop> length (repli [as] (abs n)) == length [as] * abs n
--
-- prop> repli [as] 1 == [as]

repli :: [a] -> Int -> [a]
repli as n = foldr ((++) . replicate n) [] as
