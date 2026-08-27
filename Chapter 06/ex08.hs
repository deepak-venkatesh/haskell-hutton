-- mergesort implementation 

-- merge function to merge two already sorted lists
merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x <= y    = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

-- halve to split list into two lists
halve :: [a] -> ([a],[a])
halve xs = (take n xs, drop n xs)
            where n = length xs `div` 2

-- msort to do the actual sorting
msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort left) (msort right)
            where (left, right) = halve xs
