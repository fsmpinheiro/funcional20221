


paridade bs
    |  odd ( length ts ) = True
    |  otherwise = False
    where
        ts = [ t | t <- bs, t /= False ]