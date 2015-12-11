module Problems.H14 where

-- |
-- Duplicate the elements of a list.
--
-- >>> dupli [1, 2, 3] 
-- [1,1,2,2,3,3]
--
-- prop> (length $ dupli [as]) == length [as] * 2

dupli :: [a] -> [a]
dupli = foldr (\a -> (++) [a, a]) []
