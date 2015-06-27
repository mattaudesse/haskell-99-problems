module Problems.H12 where

import Problems.H11 (RunLength(..))

-- |
-- Decode a run-length encoded list.
--
-- Given a run-length code list generated as specified in problem 11. Construct
-- its uncompressed version.
--
-- >>> :{
--      decodeModified [
--                       Multiple 4 'a'
--                     , Single 'b'
--                     , Multiple 2 'c'
--                     , Multiple 2 'a'
--                     , Single 'd'
--                     , Multiple 4 'e'
--                     ]
-- :}
-- "aaaabccaadeeee"


decodeModified :: Eq a => [RunLength a] -> [a]
decodeModified rs = reverse $ foldl unpack [] rs where
    unpack acc (Single r)       = r : acc
    unpack acc (Multiple c r)   = replicate c r ++ acc


-- |
-- (Nicer solution from https://wiki.haskell.org/99_questions/Solutions/12):
--
-- Decode a run-length encoded list.
--
-- Given a run-length code list generated as specified in problem 11. Construct
-- its uncompressed version.
--
-- >>> :{
--      decodeModified' [
--                        Multiple 4 'a'
--                      , Single 'b'
--                      , Multiple 2 'c'
--                      , Multiple 2 'a'
--                      , Single 'd'
--                      , Multiple 4 'e'
--                      ]
-- :}
-- "aaaabccaadeeee"


decodeModified' :: Eq a => [RunLength a] -> [a]
decodeModified' = concatMap unpack
    where
        unpack (Single r)       = [r]
        unpack (Multiple c r)   = replicate c r
