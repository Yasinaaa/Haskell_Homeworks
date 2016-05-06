module HW3
       ( root
       , sequence2_3_f
       , symmetric
       , listDigits
       , isHeap
       ) where

import Data.List
import Data.Char

-- |Функция root должна вычислить приближенное значение корня уравнения
-- tan x = 1 - x с точностью, заданной первым (и единственным) аргументом
-- функции
f :: Double -> Double
f x = tan x + x - 1

root :: Double -> Double
root eps = head [i | i <- [0, eps..], abs (f i) < eps]

-- |Бесконечная упорядоченная последовательность целых чисел без повторений
-- составлена из всех квадратов, кубов и факториалов натуральных чисел
-- ([1, 2, 4, 8, 9, 16, 24, 25, 27, 36, 49, 64, ..]). Написать программу для
-- вычисления n-го члена этой последовательности.
sequence2_3_f :: Int -> Integer
sequence2_3_f n = sort (take (n^n) (1: (foldr (++) [] [[i*i, i*i*i, factorial i] | i <- [2..]])))!!(n -1)
factorial 1 = 1
factorial i = i * (factorial(i-1))

-- |Написать функцию symmetric для проверки симметричности бинарного дерева.
-- Бинарное дерево является симметричным, если, проведя вертикальную линию
-- через корневой узел, правое поддерево будет являться зеркальным отражением
-- левого поддерева. Сравнивается лишь симметрия структуры дерева. Значение в
-- узле сравнивать не надо.
data Tree a = Empty |
              Node (Tree a) a (Tree a)

mirror  ::  Tree a -> Tree b -> Bool
mirror Empty Empty = True
mirror (Node a _ b) (Node x _ y) = mirror a y && mirror b x
mirror _ _ = False

symmetric  ::  Tree a -> Bool
symmetric (Node l _ r) = mirror l r

flatten Empty = []
flatten (Node t1 n t2) = (flatten t1) ++ (n : (flatten t2))

-- |Написать функцию listDigits, которая для заданного дерева из строк выдает
-- список всех строк, содержащих хотя бы одну цифру.
listDigits :: Tree String -> [String]
listDigits a =  [i | i <- flatten a, checkDigit i '9' ]

checkDigit :: String -> Char -> Bool
checkDigit a '0'  = elem '0' a
checkDigit a b = (elem b a) || checkDigit a (chr (ord b - 1))

data MultiTree a = Branch a [MultiTree a]

-- |Функция isHeap проверяет является ли дерево пирамидой, то есть значение
-- в каждом из его узлов меньше значений, хранящихся в поддеревьях у этого узла.
isHeap :: Ord a => MultiTree a -> Bool
isHeap (Branch a []) = True
isHeap (Branch a b) = (foldl (\acc i -> (acc && (a > i))) True (seperateRoot b)) && 
					(foldl (\acc i -> (acc && isHeap (i))) True b)

seperateRoot :: Ord a => [MultiTree a] -> [a]
seperateRoot a =  [seperateRoot' i | i <- a]


seperateRoot' :: Ord a => MultiTree a -> a
seperateRoot' (Branch a b) = a