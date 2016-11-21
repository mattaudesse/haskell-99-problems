module Problems.H23 where

import Control.Monad (foldM)
import System.Random (randomR, newStdGen)

-- |
-- Extract a given number of randomly selected elements from a list.
--
-- **** Skipping test since solution is inherently random ****
-- ** >>> rndSelect "abcdefgh" 3 >>= putStrLn **
-- eda

rndIndex :: Int -> Int -> IO Int
rndIndex b _ = do
    g <- newStdGen
    let (i, _) = randomR (1, b) g
    return (i - 1)

rndSelect :: [a] -> Int -> IO [a]
rndSelect as l = do
    is <- mapM (rndIndex $ length as) [1..l]
    return $ map (as !!) is
