


-- expoentes :: Int -> Int -> [( Int, Int)]
expoentes value divr = length ( takeWhile ( \(fs , sc ) -> fs /= 0 && sc == 0  )  seq  ) - 1 
    where
        takeTup (valorA, valb)  = divMod valorA divr    
        seq = iterate takeTup ( value, 0 )