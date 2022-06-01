-- Biblioteca Transformações e Busca com predicados


-- operador find:
find :: Foldable t => (a -> Bool) -> t a -> Maybe a 
>>> find (> 42) [0, 5..]
<< Just 45

>>> find (> 12) [1..7]
<< Nothing

-- operador filter:
filter :: (a -> Bool) -> [a] -> [a] 
>>> filter odd [1, 2, 3]
<< [1,3]

-- operador partition:
partition :: (a -> Bool) -> [a] -> ([a], [a]) 
partition p xs == (filter p xs, filter (not . p) xs)

>>> partition (`elem` "aeiou") "Hello World!"
<< ("eoo","Hll Wrld!")
