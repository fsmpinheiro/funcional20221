


fatorial1 n = product [1..n]

fatorial2 n = product [ x | x <- [1..n], x > 0]

fatorial3 n
    | n == 0 = 1
    | n > 0 = n * fatorial3 ( n - 1)