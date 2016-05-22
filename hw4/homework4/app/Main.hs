module Main where

import HW4
import Prelude

main :: IO ()
main = do
	let res = insertValue '|' "Hello Mum, erm... can I borrow £20000 please?" 3
	putStrLn $ "insertValue=" ++ show res
	let res = slice [3,5,6,3,5] 1 3 
	putStrLn $ "slice=" ++ show res
