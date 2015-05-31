{-
    Problem 4
    Find the number of elements of a list.

    Example in Haskell:

    Prelude> myLength [123, 456, 789]
    3

    Prelude> myLength "Hello, world!"
    13
-}


myLength :: [a] -> Int
myLength []     = 0
myLength (_:xs) = 1 + sum [1 | _ <- xs]


main :: IO ()
main = do
    -- Avoid HLint type annotation warning.
    putStrLn "myLength ([123, 456, 789] :: [Int]): "
    print $ myLength ([123, 456, 789] :: [Int])

    putStrLn "myLength \"Hello, world!\""
    print $ myLength "Hello, world!"
