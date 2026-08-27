-- and function implementation
myAnd ::[Bool] -> Bool
myAnd [] = True
myAnd (x:xs)
    | x         = myAnd xs
    | otherwise = False

-- concat function implementation 
myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (xs:xss) = xs ++ myConcat xss

-- replicate function which will take a number n (times to repeat) and then make a list of elements which repeats n times
myReplicate :: Int -> a -> [a]
myReplicate 0 x = []
myReplicate n x = x : myReplicate (n - 1) x

-- index function, instead of !! will use function name as myIndex
myIndex :: [a] -> Int -> a
myIndex (x:xs) 0 = x
myIndex (x:xs) n = myIndex xs (n - 1)

-- check with an argument is an element in a list 
myElement :: Eq a => a -> [a] -> Bool
myElement _ [] = False
myElement a (x:xs)
    | a == x    = True
    | otherwise = myElement a xs