


intercal [] [] = []
intercal [] (y:ys) = y : intercal [] ys
intercal (x:xs) [] = x : intercal xs []
intercal (x:xs) (y:ys) = x : y : intercal xs ys