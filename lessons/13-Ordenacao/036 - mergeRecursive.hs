


merge :: [Int] -> [Int] -> [Int]
merge []  xs  = xs
merge xs []   = xs
merge xs ys
    | head xs < head ys = (head xs) : merge ( tail xs ) ys
    | head xs > head ys = (head ys) : merge xs ( tail ys ) 
    | otherwise = (head xs) : (head ys) : merge ( tail xs )  ( tail ys )

