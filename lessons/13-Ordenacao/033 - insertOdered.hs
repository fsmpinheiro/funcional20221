


insertOdered :: Int -> [Int] -> [Int]
insertOdered y  [] = [y]
insertOdered y (x:xs)  = if y <= x
                            then y:x:xs
                            else x : insertOdered y xs
