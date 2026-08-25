-- Euclid's algorithm for finding Greatest Common Divisor/Highest Common Factor

euclid :: Int -> Int -> Int
euclid a 0 = a
euclid a b = euclid b (a `mod` b)

main :: IO ()
main = do
    let a = 6
    let b = 27
    putStrLn $ "GCD is " ++ show (euclid a b)