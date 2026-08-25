-- length equivalent function: adds one for each element in a list till it reaches an empty list which is the base case
myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs


-- drop equivalent function: if there is nothing to drop we return the same list, if the list is empty then no matter what we drop we get an empty list
-- for all other cases we look at the list of elements except the head i.e. tail and drop n - 1 till we reach an empty list or n  == 0
myDrop :: Int -> [a] -> [a]
myDrop 0 xs = xs
myDrop _ [] = []
myDrop n (_:xs) = myDrop (n - 1) xs


-- init equivalent function: drop the last value with the base case being that a single element list will give an empty list, the recursive step involves 
-- consing the head with the init of the tail
myInit :: [a] -> [a]
myInit [_] = []
myInit (x:xs) = x : myInit xs