


import Data.List
import Data.Maybe

myelemIndex x xs = convert $ elemIndex x xs
    where
        convert r = case r of
            Nothing -> -1
            Just value -> value