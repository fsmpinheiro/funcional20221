-- infelimente precise de ajuda do solver pra entender essa questão

 
compac xs = if length counter > 1
                then [head xs, (length counter)] : (compac dropper)
                else [head xs] : (compac dropper)
    where
        counter = takeWhile ( == ( head xs ) ) xs
        dropper = dropWhile ( == ( head xs ) ) xs



main = do
    a <- readLn :: IO [Int]
    print $ compac a