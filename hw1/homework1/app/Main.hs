module Main where

import HW1
import Lib
import Text.Printf

line n = printf "%d, " $ fibs !! n

main :: IO ()
main = do
	putStrLn $ "Fib: "
	sequence_ $ map line [1..16]
        putStrLn "..."

	let res = hw1_1 1 2
    	putStrLn $ "task 1" ++ " 1+2 = " ++ show res

	let res = hw1_2 3
	putStrLn $ "task 2 "++ show res

	let res = fact2 3
	putStrLn $ "task 3 "++ show res
	let res = fact2 4
	putStrLn $ "task 3.2 "++ show res 

	let res = isPrime 17
	putStrLn $ "task 4 "++ show res

	let res = [8..15]
	putStrLn $ "task 5 "++ show res
	let res = primeSum 8 15
	putStrLn $ "task 5 "++ show res
