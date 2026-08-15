second xs = head(tail xs)

second :: [a] -> a


pair x y = (x,y)

pair :: a -> b -> (a,b)


double x = x * 2

double :: Num a => a -> a


palindrome xs = reverse xs = xs

palindrome :: [a] -> [a]


twice f x = f (f x)

twice :: (a -> b) -> a -> a



