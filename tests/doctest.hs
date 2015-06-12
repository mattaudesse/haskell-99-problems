module Main where

import Test.DocTest

main :: IO ()
main = doctest [ 
                 "Problems/H01.hs"
               , "Problems/H02.hs"
               , "Problems/H03.hs"
               , "Problems/H04.hs"
               , "Problems/H05.hs"
               , "Problems/H06.hs"
               ]
