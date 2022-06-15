


myMap _  [ ] = [ ]
myMap fun xs =  [fun ( head xs ) ]  ++ ( myMap fun (tail xs) )