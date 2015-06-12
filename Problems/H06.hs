module Problems.H06 where

-- |
-- Find out whether a list is a palindrome. A palindrome can be read forward
-- or backward; e.g. (x a m a x).
--
-- >>> isPalindrome [1,2,3]
-- False
--
-- >>> isPalindrome "madamimadam"
-- True
--
-- >>> isPalindrome [1,2,4,8,16,8,4,2,1]
-- True


isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = False
isPalindrome xs = reverse xs == xs
