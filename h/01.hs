{-# ANN module "HLint: ignore Use string literal" #-}
{-# ANN module "HLint: ignore Use last" #-}

{-
    Problem 1
    Find the last element of a list.

    Example in Haskell:

    Prelude> myLast [1,2,3,4]
    4

    Prelude> myLast ['x','y','z']
    'z'
-}

myLast :: [a] -> a
myLast = head . reverse


main :: IO ()
main = do
    putStrLn "myLast [1,2,3,4]: "
    -- HLint complains with a type constraint warning unless we add 
    -- the ":: Integer" type annotation here:
    print (myLast [1,2,3,4] :: Integer)

    putStrLn "myLast ['x','y','z']: "
    -- Likewise, HLint wants an array of Char to be expressed as
    -- a string instead, hence the ignore pragma at top:
    print (myLast ['x','y','z'])
