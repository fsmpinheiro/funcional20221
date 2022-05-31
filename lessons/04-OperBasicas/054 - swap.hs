


swap xs n m = if length xs > m 
                then sortThis xs n m
                else xs   


sortThis xs n m = left ++ [ xs !! m ] ++ middle ++ [ xs !! n ]
    where
        left = take n xs
        middle = reverse ( take n ( reverse ( take m xs ))) 

{-
    [1,2,3,4,5,6] 2 5 == 
    [1,2,6,4,5,3]
-}