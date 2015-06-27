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
               , "Problems/H07.hs"
               , "Problems/H08.hs"
               , "Problems/H09.hs"
               , "Problems/H10.hs"
               ]
