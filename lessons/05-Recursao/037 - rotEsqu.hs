


rotEsq _ [ ] = [ ]
rotEsq 0 xs = xs
rotEsq n xs =  rotEsq (n-1) ( tail xs ++ [head xs] ) 

--rotEsq n s = rotEsq (n-1) ( tail xs ++ [head xs] )

--rotEsq 0 xs = xs
--rotEsq 1 (x:xs) =  x : []
--rotEsq n ( x:xs ) =  x : rotEsq (n - 1) xs 


--  a s d f g : 0
--  s d f g a : 1
--  d f g a s : 2
--  f g a s d : 3

-- ( s d f g ) a  : 1
-- ( ( d f g) s) a : 2