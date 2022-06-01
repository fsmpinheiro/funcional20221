


quadPerf n = tryThis n 1
    where
        tryThis i l   
            | l * l == n = True 
            | l * l > n  = False
            | otherwise = tryThis i (l + 1)