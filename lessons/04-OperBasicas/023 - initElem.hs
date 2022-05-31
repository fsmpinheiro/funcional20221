


initElem ( x:xs ) 
    |   length xs == 0 = [ ]
    |   otherwise =  [x] ++ initElem xs