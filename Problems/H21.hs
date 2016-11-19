module Problems.H21 where

-- |
-- Insert an element at a given position into a list.
--
-- >>> insertAt 'X' "abcd" 2
-- "aXbcd"
--
-- >>> insertAt 'X' "abcd" 1
-- "Xabcd"
--
-- >>> insertAt 'X' "abcd" 4
-- "abcXd"
--
-- >>> insertAt 'X' "abcd" 5
-- "abcdX"
--
-- >>> insertAt 'X' "" 1
-- "X"
--
-- >>> insertAt 'X' "" 2
-- "*** Exception: Out of bounds!
--
-- >>> insertAt 'X' "abcd" 0
-- "*** Exception: Out of bounds!
--
-- >>> insertAt 'X' "abcd" 6
-- "*** Exception: Out of bounds!

insertAt :: a -> [a] -> Int -> [a]
insertAt a as i
    | null as && i == 1            = [a]
    | i < 1   || i > length as + 1 = error "Out of bounds!"
    | otherwise                    = let (front, back) = splitAt (i - 1) as
                                     in  front ++ [a] ++ back
