


countNeg :: (ord a, Num a) => [a] -> Int
countNeg xs = length [ x | x <- xs, x < 0 ]