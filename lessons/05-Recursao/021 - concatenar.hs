

-- OBS: não pode usar o operador de ++, apenas o :
concatt [] [] = []
concatt [] ys = ys
concatt (x:xs) ys = x : concatt xs ys