


-- ??? if a lista for maior que o tamanho desejado remova o maior elemento chame a recursão ???

menores 0 _ = [ ]
menores 1 xs = take 1 ( filter ( <= head xs ) xs )
menores n xs
    | leng <= n = xs
    | otherwise = menores n ( reduceMax xs)
    where
        leng = length xs

reduceMax xs
    |  last xs  ==  maximum xs  = init xs
    | otherwise =  reduceMax (init xs) ++ [last xs]

