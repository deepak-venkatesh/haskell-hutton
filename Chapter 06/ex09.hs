-- recursive sum
mySum :: [Int] -> Int
mySum [] = 0
mySum (x:xs) = x + mySum xs

-- recursive take
myTake :: Int -> [a] -> [a]
myTake 0 _ = []
myTake _ [] = []
myTake n (x:xs) = x:myTake (n - 1) xs

-- last element of a non-empty list
myLast :: [a] -> a
myLast [x] = x
myLast (x:xs) = myLast xs