


import Data.Char

vigenere :: [Char] -> [Char] -> [Char]
vigenere [] k = []
vigenere p [] = []
vigenere ( p:ps ) ( k:ks ) = ( encrypta p k ):( vigenere ps ( ks++[k] ) )
  where
    encrypta a b = chr $ 65 + mod ( ord a + ord b ) 26