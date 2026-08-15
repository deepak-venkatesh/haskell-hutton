mult :: Int -> Int -> Int -> Int
mult = \a -> (\b -> (\c -> a * b * c))