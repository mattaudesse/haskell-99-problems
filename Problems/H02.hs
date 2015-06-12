module Problems.H02 where

{-# ANN module "HLint: ignore Use string literal" #-}

-- |
-- Find the last but one element of a list.
--
-- >>> myButLast [1,2,3,4]
-- 3
--
-- >>> myButLast ['a'..'z']
-- 'y'

myButLast :: [a] -> a
myButLast = head . drop 1 . reverse 
