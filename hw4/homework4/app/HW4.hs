module HW4 where

-- |Функция insertValue должна должна вставлять значение в список на указанную 
-- позицию. 
import Prelude

insertValue :: a -> [a] -> Int -> [a]
insertValue y xs n = countdown n xs where
   countdown 0 xs = y:countdown n xs 
   countdown _ [] = []
   countdown m (x:xs) = x:countdown (m-1) xs

-- |Функция slice должна возвращать подсписок в пределах от A до B 
--		список	 А		B

-- slice :: [a] -> Int -> Int -> Maybe [a]
slice :: [a] -> Int -> Int -> [a]
slice xs from to  = take (to - from + 1) (drop from xs)


-- |Написать функцию collectNodes, которая для каждого уровня дерева составит список
-- значений узлов и выведет общий список всех уровней.
--data Tree a = Node a [Tree a]

--collectNodes :: Tree a -> [[a]]
--collectNodes = error "collectNodes is not implemented"
{- data Tree a = Empty
| Leaf a
| Node (Tree a) a (Tree a)
deriving (Eq, Ord, Show)

size :: Tree a -> Int
size Empty   = 0
size (Leaf n)    = 1
size (Node left elem right) = size left + size right + 1 -}

-- |Функция isEulerPathExist должна проверить содержит ли граф Эйлеров путь 
type Graph = [(Int, [Int])]

isEulerPathExist :: Graph -> Bool
isEulerPathExist = error "isEulerPathExist is not implemented"

-- |Функция paths должна вернуть список путей между 2мя точками в графе.
-- Каждый путь представляется собой список с вершинами от точки А до B.
-- Граф задается как список ребер [(a,a)]. Например, [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)]
--				 А	  B		граф		
paths :: Eq a => a -> a -> [(a,a)] -> [a]
paths = error "paths is not implemented"