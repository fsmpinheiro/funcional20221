


pertence el [] = False
pertence el (x:xs)
    |   el == x = True
    |   otherwise = pertence el xs