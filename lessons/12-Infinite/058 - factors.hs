-- Não conseguio entender a descrição da questão 








infinitePrimos = [ x | x <- [1..], ehPrimo x ]


ehPrimo k = if ( k > 1 )
            then null [ x | x <- [2.. isqrt k ], k `mod` x == 0 ]
                else False


isqrt 0 = 0
isqrt 1 = 1
isqrt n = head $ dropWhile (\x -> x * x > n ) $ iterate (\x -> ( x + n `div` x) `div` 2) ( n `div` 2) 