


gerador1 = 0 : concat [ [x, (-x)] | x <- [1..] ]

gerador2 = 0 : concat [ [x,  - ( x + 1) ]  | x <- [1,3..] ]

-- gerador3 = 

gerador4 =  takeWhile ( /= 0) $ iterate ( \x -> div x 2 ) 1000

  