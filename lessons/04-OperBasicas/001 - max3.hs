


max3 x y z = max2 z $ max2 x y
    where
        max2 a b
            | a > b = a
            | b > a = b
            | otherwise = b