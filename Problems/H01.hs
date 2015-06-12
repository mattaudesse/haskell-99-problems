module Problems.H01 where

{-# ANN module "HLint: ignore Use string literal" #-}
{-# ANN module "HLint: ignore Use last" #-}

-- |
-- "myLast" - Find the last element of a list.
--
-- >>> myLast [1,2,3,4]
-- 4
--
-- >>> myLast ['x','y','z']
-- 'z'
--
-- prop> myLast [a] == last [a]

myLast :: [a] -> a
myLast = head . reverse
