module Problems.H13 where

import Problems.H11 (RunLength(..))

-- |
-- Direct run-length encoding.
--
-- Implement the so-called run-length encoding data compression method
-- directly. I.e. don't explicitly create the sublists containing the
-- duplicates, as in problem 9, but only count them. As in problem P11,
-- simplify the result list by replacing the singleton lists (1 X) by X.
--
-- >>> encodeDirect "aaaabccaadeeee"
-- [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']

encodeDirect :: Eq a => [a] -> [RunLength a]
encodeDirect = foldr collapse [] where 
    collapse i []               = [Single i]
    collapse i acc              = collapse' i (head acc) ++ tail acc

    collapse' n (Single p)      = if n == p 
                                then [Multiple 2 n]   
                                else [Single n, Single p]

    collapse' n (Multiple c p)  = if n == p 
                                then [Multiple (c + 1) n] 
                                else [Single n, Multiple c p]
