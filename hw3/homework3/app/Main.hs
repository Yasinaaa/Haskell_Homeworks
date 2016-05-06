module Main where

import HW3
import Data.List
import Data.Char
import Prelude

main :: IO ()
main = do
	let res = root 5
	putStrLn $ "root=" ++ show res
