-- | Sum the squares of the integers from 1 to n.
sumOfSquares :: Int -> Int
sumOfSquares n = sum [x^2 | x <- [1..n]]