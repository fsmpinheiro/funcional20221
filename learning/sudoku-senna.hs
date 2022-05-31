{-| 

mainSolver "01.2."      3 => "01320"
mainSolver ".0..231..5" 5 => "1045231045"

retorna o subvetor incluindo o elemento posição
índice e lim elementos a esquerda e a direita
neib "abcdef.." 0 2 == "abc"
neib "abc.def"  3 1 == "c.d"
neib "abc.def"  3 2 == "bc.de"
retorna um subvertor com o elemento da posição 
informada junto da quantidade de elementos a 
esquerda e a direita informado por lim

|-}

neib :: [a] -> Int -> Int -> [a]
neib xs index lim 