-- Infelizmente a definição desse problam não está muito clara
-- foi necessária consulta ao solver.hs

--Problema:  Escreva uma função reduce que recebe uma tupla (numerador/denomidador)
--           e devolve a fração após redução.

-- reduce (10,2) == (10,1)      ??
-- reduce (15,6) == (5,2)       ??
-- reduce (30,12) == (5,2)      ??
-- reduce (120,48) == (5,2)     ??
-- reduce (50,100) == (1,2)     ??

reduce ( x, y ) = foldl auxFun ( x , y )  [2..y]

auxFun ( n, m ) w
    |   n `mod` w == 0 && m `mod` w == 0 = ( div n w, div m w)
    |   otherwise = ( n, m)