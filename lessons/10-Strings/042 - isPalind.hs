


isPalindrom :: [Char] -> Bool
isPalindrom [ ] = True
isPalindrom [x] = True
isPalindrom (x:xs) = x == end && isPalindrom ( init xs )
        where
            end = last xs