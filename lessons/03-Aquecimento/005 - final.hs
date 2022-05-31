

-- final num xs = [ x | x <- reverse ( take num (reverse xs) ) ]
final num xs = drop ( length xs - num  ) xs