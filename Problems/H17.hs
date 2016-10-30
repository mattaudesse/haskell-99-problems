module Problems.H17 where

-- |
-- Split a list into two parts; the length of the first part is given.
-- Do not use any predefined predicates.
--
-- >>> split "abcdefghik" 3
-- ("abc","defghik")
--
-- >>> split "abcdefghik" 0
-- ("","abcdefghik")
--
-- >>> split "abcdefghik" 15
-- ("abcdefghik","")

-- NB: implementing custom take' and drop' since problem specifies not to use
-- "any predefined predicates"

take' :: Int -> [a] -> [a]
take' _ [] = []
take' l (a:as)
    | l > 0     = a : take' (l - 1) as
    | otherwise = []


drop' :: Int -> [a] -> [a]
drop' _ [] = []
drop' l (a:as)
    | l > 0     = drop' (l - 1) as
    | otherwise = a:as


split :: [a] -> Int -> ([a], [a])
split as l =
    let front = take' l as
        back  = drop' l as
    in (front, back)
