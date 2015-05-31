{-# ANN module "HLint: ignore Use string literal" #-}

{-
    Problem 2
    Find the last but one element of a list.

    Example in Haskell:

    Prelude> myButLast [1,2,3,4]
    3

    Prelude> myButLast ['a'..'z']
    'y'
-}

myButLast :: [a] -> a
myButLast = head . drop 1 . reverse 


main :: IO ()
main = do
    putStrLn "myButLast [1,2,3,4]: "
    -- HLint complains with a type constraint warning unless we add 
    -- the ":: Integer" type annotation here:
    print (myButLast [1,2,3,4] :: Integer)

    putStrLn "myButLast ['a'..'z']: "
    -- Likewise, HLint wants an array of Char to be expressed as
    -- a string instead, hence the ignore pragma at top:
    print (myButLast ['a'..'z'])
