module Problems.H24 where

import System.Random           (randomRs, newStdGen)
import Test.QuickCheck         (Property)
import Test.QuickCheck.Monadic (assert, run, monadicIO)

-- |
-- Draw N different random numbers from the set 1..M.
--
-- **** Skipping explicit test case since solution is inherently random ****
-- ** >>> diffSelect 6 49 **
-- [23,1,17,33,21,37]
--
-- prop> runAssert $ expectedLength    n m
-- prop> runAssert $ withinExpectedMax n m
-- prop> runAssert $ withinExpectedMin n m

diffSelect :: Int -> Int -> IO [Int]
diffSelect n m
    | negativeArgs n m = return []
    | otherwise        = do
        gen <- newStdGen
        return $ take n [ [1..m] !! i | i <- randomRs (0, m - 1) gen ]


negativeArgs :: Int -> Int -> Bool
negativeArgs n m = n < 0 || m < 0


zeroValueArgs :: Int -> Int -> Bool
zeroValueArgs n m = n == 0 || m == 0


-- For all positive args n and m, length of result == n 
expectedLength :: Int -> Int -> IO Bool
expectedLength n m
    | negativeArgs n m = return True
    | otherwise        = ((== n) . length) <$> diffSelect n m


-- For all positive args n and m, highest value may not exceed m
withinExpectedMax :: Int -> Int -> IO Bool
withinExpectedMax n m
    | negativeArgs  n m = return True
    | zeroValueArgs n m = return True
    | otherwise         = ((<= m) . maximum) <$> diffSelect n m


-- For all positive args n and m, lowest value may not be less than 1
withinExpectedMin :: Int -> Int -> IO Bool
withinExpectedMin n m
    | negativeArgs  n m = return True
    | zeroValueArgs n m = return True
    | otherwise         = ((>= 1) . minimum) <$> diffSelect n m


runAssert :: IO Bool -> Property
runAssert t = monadicIO $ do
    r <- run t
    assert r
