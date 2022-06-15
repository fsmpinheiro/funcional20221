


titulo :: [Char] -> [Char]
titulo xs = goUpper( [head xs] ) ++ read0 xs

read0 ( x:[ ] ) = [ ] 
read0 (x:xs) = if x == ' ' 
                then [' '] ++ goUpper [ head xs ] ++ read0 xs
                else goLower [ head xs ] ++ read0 xs



goUpper xs = [ snd y | x <- xs, y <- paringUp, fst y == x ]
    where
        paringUp = zip ['a'..'z'] ['A'..'Z']

goLower xs = [ snd y | x <- xs, y <- paringLo, fst y == x || snd y == x ]
    where
        paringLo = zip ['A'..'Z'] ['a'..'z']