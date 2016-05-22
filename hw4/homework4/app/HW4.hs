module HW4 where

-- |������� insertValue ������ ������ ��������� �������� � ������ �� ��������� 
-- �������. 
import Prelude

insertValue :: a -> [a] -> Int -> [a]
insertValue y xs n = countdown n xs where
   countdown 0 xs = y:countdown n xs 
   countdown _ [] = []
   countdown m (x:xs) = x:countdown (m-1) xs

-- |������� slice ������ ���������� ��������� � �������� �� A �� B 
--		������	 �		B

-- slice :: [a] -> Int -> Int -> Maybe [a]
slice :: [a] -> Int -> Int -> [a]
slice xs from to  = take (to - from + 1) (drop from xs)


-- |�������� ������� collectNodes, ������� ��� ������� ������ ������ �������� ������
-- �������� ����� � ������� ����� ������ ���� �������.
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

-- |������� isEulerPathExist ������ ��������� �������� �� ���� ������� ���� 
type Graph = [(Int, [Int])]

isEulerPathExist :: Graph -> Bool
isEulerPathExist = error "isEulerPathExist is not implemented"

-- |������� paths ������ ������� ������ ����� ����� 2�� ������� � �����.
-- ������ ���� �������������� ����� ������ � ��������� �� ����� � �� B.
-- ���� �������� ��� ������ ����� [(a,a)]. ��������, [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)]
--				 �	  B		����		
paths :: Eq a => a -> a -> [(a,a)] -> [a]
paths = error "paths is not implemented"