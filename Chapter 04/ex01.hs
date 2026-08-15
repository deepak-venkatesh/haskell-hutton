halve :: [a] -> ([a],[a])
halve xs = (take n xs, drop n xs)
    where
        n = length xs `div` 2


main :: IO ()
main = do
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    putStrLn $ "Halve: " ++ show (halve numbers)