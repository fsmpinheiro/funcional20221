-- Uma lista com os operadores básicos do haskell

-- Operador ++:
(++) :: [a] -> [a] -> [a] --infixr 5

>>> [1,2] ++ [3,4]
<< [1,2,3,4]


-- Operador head:
head :: [a] -> a 

>>> head [1, 2, 3]
<< 1
>>> head [1..]
<< 1
>>> head []
<< Exception: Prelude.head: empty list


-- Operador last:
last :: [a] -> a 

>>> last [1, 2, 3]
<< 3
>>> last [1..]
<<  * Executado sob uma list infinita, ele não termina *
>>> last []
<<  Exception: Prelude.last: empty list


-- Operador tail:
tail :: [a] -> [a] 

>>> tail [1, 2, 3]
<< [2,3]
>>> tail [1]
<< []
>>> tail []
<<  Exception: Prelude.tail: empty list


-- Operador init:
init :: [a] -> [a] 

>>> init [1, 2, 3]
<< [1,2]
>>> init [1]
<< []
>>> init []
<<  Exception: Prelude.init: empty list


-- Operador null
null :: Foldable t => t a -> Bool

>>> null []
<< True
>>> null [1]
<< False


-- Operador length:
length :: Foldable t => t a -> Int

>>> length []
<< 0
>>> length ['a', 'b', 'c']
<< 3
>>> length [1..]
<<  * Executado sob uma list infinita, ele não termina *