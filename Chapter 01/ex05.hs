{-

Using <  instead of <=  causes equal elements equal  to be discarded. Thus qsort removes duplicate elements while sorting,
so the result is a sorted list containing only distinct elements.

-}


qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
                where
                    smaller = [a | a <- xs, a < x]
                    larger = [b | b <- xs, b > x]


main :: IO ()
main = do
    let numbers = [2, 2, 3, 1, 1]
    putStrLn $ "Qsort: " ++ show (qsort numbers)