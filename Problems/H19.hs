module Problems.H19 where

-- |
-- Rotate a list N places to the left.
--
-- Hint: Use the predefined functions length and (++).
--
-- >>> rotate ['a','b','c','d','e','f','g','h'] 3
-- "defghabc"
--
-- >>> rotate ['a','b','c','d','e','f','g','h'] (-2)
-- "ghabcdef"
--
-- >>> rotate ['a','b','c','d','e','f','g','h'] (-1)
-- "habcdefg"
--
-- >>> rotate ['a','b','c','d','e','f','g','h'] 0
-- "abcdefgh"
--
-- >>> rotate ['a','b','c','d','e','f','g','h'] 124 
-- "efghabcd"
--
-- >>> rotate ['a','b','c','d','e','f','g','h'] (-125) 
-- "defghabc"
--
-- >>> rotate ['a','b','c','d','e','f','g','h'] 9
-- "bcdefgha"

rotate :: [a] -> Int -> [a]
rotate as 0 = as
rotate as l =
    let l'            = abs l `rem` length as -- Support "rolling" rotation
        edge          = if   l > 0
                        then l'
                        else length as + (-l')
        (back, front) = splitAt edge as
    in front ++ back
