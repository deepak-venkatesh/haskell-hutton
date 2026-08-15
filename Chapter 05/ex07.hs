-- Make Pairs using nested list comprehensions 
myPair :: [Int] -> [Int] -> [(Int, Int)]
myPair xs ys = concat [[(x,y) | x <- xs] | y <- ys]