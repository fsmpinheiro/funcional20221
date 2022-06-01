

-- recursão na função auxiliar 
removerMaior [x] = [x]
removerMaior xs = pegaBigger xs (elem - 1)
    where
        elem = maximum xs

pegaBigger [x] elem = [x]
pegaBigger (x:xs) elem
    | x <= elem = x : pegaBigger xs elem
    | otherwise = pegaBigger xs x


updtBigger x y 
    | x > y = y
    | otherwise = x

-- rodando com filter:
removerMaiorF [x] = [x]
removerMaiorF xs = filter ( < maior) xs
    where
        maior = maximum xs


--removerMaior [ ] = [ ] 
-- removerMaior (x:xs) = if leng > 0
--                     then 
--                     else [x]
--         where
--             leng = length xs

-- removerMaior [x] = [x]
-- removerMaior (x:xs)
--     | x < removerMaior xs = x : [ ]
--     | otherwise =  removerMaior xs

-- removerMaior [x] = [x]
-- removerMaior (x:xs)
--     | x < elem = x : removerMaior xs
--     | x > elem = elem : removerMaior xs
--     -- | otherwise = [ ]
--     where
--         elem = if (length xs > 0)
--                 then head xs
--                 else 0
