

{- 
myMaximum [] = error "the list is empty"
myMaximum [x] = x
myMaximum ( x:xs )
    | x > myMaximum xs = x
    | otherwise = myMaximum xs
-}


maiorEl [x] = x
maiorEl ( x:xs )
    | x > maiorEl xs = x
    | otherwise = maiorEl xs