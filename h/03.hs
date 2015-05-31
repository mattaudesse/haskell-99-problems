{-
    Problem 3
    Find the K'th element of a list. The first element in the list is number 1.

    Example in Haskell:

    Prelude> elementAt [1,2,3] 2
    2

    Prelude> elementAt "haskell" 5
    'e'
-}


elementAt :: [a] -> Int -> a
elementAt es i = es !! (i - 1)


main :: IO ()
main = do
    putStrLn "elementAt [1,2,3] 2: "
    -- HLint complains with a type constraint warning unless we add 
    -- the ":: Integer" type annotation here:
    print (elementAt [1,2,3] 2 :: Integer)

    putStrLn "elementAt \"haskell\" 5"
    print (elementAt "haskell" 5)
