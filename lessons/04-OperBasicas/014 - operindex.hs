

{-
operIndex x xs = let
        len = length xs 
        x' = if x < 0 
                then x + len 
                else x
        in xs !! x'
-}

operIndex x xs = xs !! x