


sublist x y xs = drop x' ( reverse ( drop ( leng - y' ) ( reverse xs ) ) )
    where
        leng =  length xs
        x'   = if x < 0
                    then x * (-1)       else x
        y'   = if y < 0
                    then y * (-1)       else y
