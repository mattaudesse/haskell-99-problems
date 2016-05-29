module Problems.H16 where

-- |
-- Drop every N'th element from a list.
--
-- >>> dropEvery "abcdefghik" 3
-- "abdeghk"
--
-- >>> dropEvery "qwertyqwertyqwerty" 5
-- "qweryqwetyqwrty"
--
-- >>> dropEvery "abcdefghijk" 0
-- "abcdefghijk"
--
-- prop> let l = length (dropEvery [as] n) in n <= 0 || l < n || l == length [as] - (length [as] `mod` n)

dropEvery :: [a] -> Int -> [a]
dropEvery as n
    | n <= 0    = as
    | null as   = as
    | otherwise = let parts = splitAt (n - 1) as
                  in fst parts ++ dropEvery ((drop 1 . snd) parts) n
