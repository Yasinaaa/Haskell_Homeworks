module Lib
       ( list2_1
       , gcd
       , coPrime
       , gcfList
       , perfect
       ) where

import Prelude hiding (gcd)

-- Запускать при помощи: haskellstack.org
-- stack setup - установка GHC нужной версии и т.д.
-- stack build - компиляция
-- stack test  - тесты

-- |Написать программу для нахождения минимального из
-- чисел, являющихся максимальными в каждой из строк заданной
-- прямоугольной матрицы.
list2_1 :: Integral a => [[a]] -> a
list2_1 [] = error "list2_1: empty argument"
list2_1 ls = minimum (map maximum [x | x <- ls])

-- |Вычислить наибольший общий делитель(НОД) 2х натуральных чисел. Использовать алгоритм Евклида.
gcd :: Integral a => a -> a -> a
gcd a b
	| a <= 0 || b < 0 = error "gcd: non-positive argument"
	| b == 0 = a
	| otherwise = gcd b (a `mod` b)

-- |Проверить являются ли 2 натуральных числа взаимнопростыми.
-- 2 числа называются взаимнопростыми если их НОД равен 1
coPrime :: Integral a => a -> a -> Bool
coPrime a b = if gcd a b == 1 then True else False

-- |Напишите функцию нахождения самого маленького числа, которое делится
-- на все числа от одного до N.
gcfList :: Integral a => [a] -> a
gcfList ls = foldr (\x y -> x * y `div` gcd x y) 1 ls

-- |Написать программу для нахождения первых N совершенных чисел.
-- Совершенным числом называется натуральное число, равное
-- сумме всех своих делителей, включая единицу, но исключая само
-- это число. Так, например, число 28 – совершенное, поскольку
-- 28 = 1 + 2 + 4 + 7 + 14. 

perfect' n = sum [x | x <- [1..n], n `mod` x == 0, x /= n]

perfect :: Integral a => a -> [a]
perfect n = [x | x <- [1..n], perfect' x == x]









