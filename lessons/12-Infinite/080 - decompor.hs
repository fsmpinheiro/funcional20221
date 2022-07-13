import Data.List


separa :: Int -> [Int] 
separa x
    | x > 9 =  separa ( div x 10 ) ++ [ mod x 10 ]
    | otherwise = [x]


separaUnf = reverse . unfoldr (\x -> if x == 0 
                                        then Nothing 
                                        else Just (mod x 10, div x 10))


separaMap x = map ( \x -> read[x] :: Int ) (show x)

separa0 :: Int -> [Int] 
separa0 x = if ( x > 9)
            then ( mod x 10 ) : separa0 ( div x 10 )
            else [x]
