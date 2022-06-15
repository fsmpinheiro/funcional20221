


import Data.Maybe
--input :  somaMaybe (Just5) (Just7) == Just 12
--input :  somaMaybe (Just5) Nothing == Just 5

somaMaybe :: Maybe Int -> Maybe Int -> Maybe Int
somaMaybe x y
    |   isJust x && isJust y = Just $ fromJust x + fromJust y
    |   isNothing x && isJust y = Just $ fromJust y
    |   isJust x && isNothing y = x
    | otherwise = Nothing