


revTeiro :: Int -> Int
revTeiro num = snd $ rev num
    where rev x
            |x > 0 = let ( a,b ) = rev( div x 10 ) in (  a * 10 , ( mod x 10 ) * a + b)
            |otherwise = ( 1 , 0)