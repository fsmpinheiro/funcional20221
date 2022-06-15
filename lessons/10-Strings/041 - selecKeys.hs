


selectKey :: [Char] -> [Int] -> [Char]
selectKey xs ys = [ x | y <- ys , x <- [(!!) xs y] ]