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
myLength (_:[]) = 1
myLength (_:xs) = 1 + sum [1 | _ <- xs]


-- Avoid HLint type annotation warning.
testSetOne :: [Int]
testSetOne = [123, 456, 789]


main :: IO ()
main = do
   putStrLn $ "myLength testSetOne (" ++ show testSetOne ++ "): "
   print (myLength testSetOne)

   putStrLn "myLength \"Hello, world!\""
   print (myLength "Hello, world!")
