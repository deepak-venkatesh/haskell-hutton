fact :: Int -> Int
fact 0  = 1
fact n |n > 0 = n * fact (n - 1)
       | otherwise = error "factorial does not exist for negative numbers"


main :: IO ()
main = do
    let number  = 5
    putStrLn $ "Factorial is: " ++ show (fact number)
