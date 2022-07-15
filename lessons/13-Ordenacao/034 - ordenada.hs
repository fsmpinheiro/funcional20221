



ordenada [] = True
ordenada [x] = True
ordenada (x:xs)
    | x <= ( head xs ) = ordenada xs
    | otherwise = False