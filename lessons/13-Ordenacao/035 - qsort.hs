


qsort [] = []
qsort ( x:xs ) = menor ++ [x] ++ maior
    where
        menor = qsort [ a | a <- xs, a <= x ]
        maior = qsort [ b | b <- xs, b > x ]