


myUpper :: [Char] -> [Char]
myUpper xs = [ snd y | x <- xs, y <- paring , fst y == x || snd y == x ]
    where
        paring = zip ['a'..'z'] ['A'..'Z']  ++ zip ['0'..'9'] ['0'..'9'] ++ [(' ', ' ')]