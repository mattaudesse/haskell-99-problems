module Problems.H07 where


data NestedList a = Elem a | List [NestedList a]


-- |
-- Flatten a nested list structure.
--
-- Transform a list, possibly holding lists as elements into a `flat' list by
-- replacing each list with its elements (recursively).
--
-- >>> flatten (Elem 5)
-- [5]
--
-- >>> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
-- [1,2,3,4,5]
--
-- >>> flatten (List [])
-- []


flatten :: NestedList a -> [a]
flatten (Elem x)  = [x]
flatten (List []) = []  
flatten (List xs) = concatMap flatten xs
