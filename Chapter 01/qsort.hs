qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
                where
                    smaller = [a | a <- xs, a <= x]
                    larger = [b | b <- xs, b > x]


main :: IO ()
main = do
    let numbers = [3, 5, 1, 4, 2, 99, 45, 20, 0, 100, -10, 45]
    putStrLn $ "Qsort: " ++ show (qsort numbers)