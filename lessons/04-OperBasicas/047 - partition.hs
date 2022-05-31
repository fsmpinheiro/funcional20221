


splitOddsEvens xs = ( ls, ms )
    where
        ls = [x | x <- xs, odd x ]
        ms = [y | y <- xs, even y]

splitByElem xs n = ( ls, ms )
    where
        ls = [x | x <- xs, ( x < n ) ]
        ms = [y | y <- xs, ( y > n ) ]