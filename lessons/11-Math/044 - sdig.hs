



sdig :: Int -> Int
sdig x = if ( x > 0 ) 
            then ( mod x 10 ) + sdig ( div x 10 )
            else  x