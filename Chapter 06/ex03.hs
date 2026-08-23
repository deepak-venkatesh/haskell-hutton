-- ^ is in the prelude and gives an error so using the label power
power :: Int -> Int -> Int
power m 0 = 1
power m n | n > 0      = m * power m (n - 1)
          | otherwise  = error "negative exponent"

main :: IO ()
main = do
    let m = 2
    let n = 3
    putStrLn $ "Power is " ++ show(power m n)
