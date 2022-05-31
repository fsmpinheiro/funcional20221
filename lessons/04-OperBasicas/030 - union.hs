


union xs ys = xs ++ [y | y <- ys, y `notElem` xs ]