-- Generate Factors function
factors :: Int -> [Int]
factors n =  [x | x <- [1..n], n `mod` x == 0]

-- Generate Perfect number function
perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum (factors n) == 2 * n]