


intersect xs ys = sortList ls
    where
        ls = [ x | x <- xs, x `elem` ys ]

sortList [] = []
sortList (x:xs) = sortList menor  ++ [x] ++  sortList maior
    where
        menor = filter ( < x  ) xs
        maior = filter ( >= x ) xs