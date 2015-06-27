module Problems.H09 where

-- |
-- Pack consecutive duplicates of list elements into sublists. If a list
-- contains repeated elements they should be placed in separate sublists.
--
-- >>> :{
--      pack [
--           'a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 
--           'a', 'd', 'e', 'e', 'e', 'e'
--           ]
-- :}
-- ["aaaa","b","cc","aa","d","eeee"]


pack :: Eq a => [a] -> [[a]] 
pack xs = reverse $ foldl group' [] xs where
    group' []       y   = [[y]]
    group' (a:rest) y
        | y == head a   = (y:a):rest
        | otherwise     = [y]:a:rest
