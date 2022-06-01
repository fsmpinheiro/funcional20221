


rotDir _ [ ] = [ ]
rotDir 0 xs = xs
rotDir n xs = rotDir ( n - 1) ( [last xs] ++ init xs )


--  a s d f g : 0
--  g a s d f : 1
--  f g a s d : 2
--  d f g a s : 3