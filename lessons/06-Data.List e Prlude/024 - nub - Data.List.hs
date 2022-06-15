


myNub [ ] = [ ]
myNub xs = auxNub xs []
    where
        auxNub [ ] _ = [ ]
        auxNub ( x:xs ) ys
            |   x `elem` ys = auxNub xs ys
            |   otherwise   = x : auxNub xs ( x:ys )