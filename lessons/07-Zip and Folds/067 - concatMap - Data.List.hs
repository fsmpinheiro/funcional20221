

ccataMap:: (a -> [b]) -> [a] -> [b]
ccataMap fun xs =  foldl ( ++ ) [] ( map fun xs)