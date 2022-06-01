


-- frequencia de x em uma lista

frequence1 x xs = length [y | y <- xs, y == x]

frequence2 y [] = 0
frequence2 y (x:xs) 
    | x /= y = 0 + frequence2 y xs
    | otherwise = 1 + frequence2 y xs

frequence3 x xs = length ( filter ( == x ) xs )