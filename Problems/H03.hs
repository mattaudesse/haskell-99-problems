module Problems.H03 where

-- |
-- Find the K'th element of a list. The first element in the list is number 1.
--
-- >>> elementAt [1,2,3] 2
-- 2
--
-- >>> elementAt "haskell" 5
-- 'e'


elementAt :: [a] -> Int -> a
elementAt es i = es !! (i - 1)
