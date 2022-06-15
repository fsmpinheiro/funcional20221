


import Data.Maybe

filterMayber :: [Maybe Int] -> [Int]
filterMayber xs = [ x | Just x <- xs ]