-- Find to return a list of values in a list of key value pairs given a key
find :: Eq a => a -> [(a,b)] -> [b] 
find k t = [v | (k',v) <- t, k' == k]

-- Positions returns the index of an argument
positions :: Eq a => a -> [a] -> [Int]
positions x xs = [i | (x',i) <- zip xs [0..], x' == x]

-- Positions using the function find defined at the top
positionsFind :: Eq a => a -> [a] -> [Int]
positionsFind x xs = find x (zip xs [0..])