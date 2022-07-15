


vetFib n = take n fibs

fib 0 = 0
fib 1 = 1
fib n = fib ( n - 1 ) + fib ( n - 2 )

fibs = ab
    where
        ( ab, cd ) = unzip $ ( 0,1 ) : zip cd ( zipWith (+) ab cd )


main = do
    a <- readLn :: IO Int
    print $ vetFib a