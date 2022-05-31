


gangorra :: (Num a, Num p, Ord a) => a -> a -> a -> a -> p
gangorra peso1 comp1 peso2 comp2
    | ( peso1 * comp1 ) >  ( peso2 * comp2 ) = -1
    | ( peso1 * comp1 ) <  ( peso2 * comp2 ) = 1
    | otherwise = 0