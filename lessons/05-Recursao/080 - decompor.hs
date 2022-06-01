


decompor 0 = [0]
decompor n
    | n < 10 = [ n ]
    | otherwise = decompor ( div n 10) ++ [ mod n 10 ]