


deleteE _ [] = []
deleteE 1 [1] = []
deleteE n xs = if elem == n
                then tail xs
                else [elem] ++ deleteE n (tail xs)
    where
        elem = head xs

    --         |  head xs  /= n = head xs
    --         | otherwise = deleteE 999 ( tail xs )

    -- | n /= ( head xs ) = deleteE n ( [head xs ] ++ tail xs)
    -- deletee x (u:us) = if x==u then us else u:(deletee x us)