sumdown :: Int -> Int
sumdown 0 = 0
sumdown n = n + sumdown (n - 1)

main :: IO ()
main = do
    let number = 3
    putStrLn $ "Sumdown is " ++ show (sumdown number)