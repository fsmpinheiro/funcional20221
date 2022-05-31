{-
-------
Atividaeds realizadas com base no repositório: 
https://github.com/cis552/01-intro

Modulo "Basics"




Welcome to Haskell!
-------------------
If you are reading this text online, you may wish to access it as a Haskell project instead. 
You can find this module as part of the repository [01-intro](https://github.com/cis552/01-intro) 
on github. We have prepared instructions on using [github with CIS 552]
(https://www.cis.upenn.edu/~cis552/current/version.html) and with installing [GHC and VSCode]
(https://www.cis.upenn.edu/~cis552/current/haskell-vscode.html).
We strongly encourage you to read this file in the VSCode editor so that you can experiment with it.
Every Haskell file begins with a few lines naming the module (this name must start with a capital 
letter and be the same as the file name) and (optionally) importing definitions from other modules.


-}

module Basico where 


ex :: Integer 
ex = 3 * ( 4 + 5 )

-- The _Integer_ type is the type of value of the arbitrarily large integers in Haskell.

bigInteger :: Integer 
bigInteger = 12345678901234567890123456789

{- This is in contrast to the Int type, for word-sized integers (machine dependente).
-- Number are overloaded in Haskell, so the type annotation tells the compiler how to 
-- interpret this expression. (And, note the warning issued by the compiler for this 
-- out of range number!) -}

bigInt :: Int
bigInt = 1234567890123456789






menorDeDois :: ( Ord a ) => a -> a -> a
menorDeDois x y = if x < y
    then x
    else y

menorDeTres :: ( Ord a ) => a -> a -> a -> a
menorDeTres x y z
    | x < y && y < z = x
    | x > y && y < z = y
    | otherwise = z

stringue = "This is a biiig, " ++ "very big, string!"