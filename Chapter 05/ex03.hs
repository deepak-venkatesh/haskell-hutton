-- Building a list of co-ordinate tuples. 
grid :: Int -> Int -> [(Int, Int)]
grid m n = [(x,y) | x <- [0..m], y <- [0..n]]

-- A square without the diagonal tuples. 
square :: Int -> [(Int, Int)]
square n = [(x,y) | (x, y) <- grid n n, x /= y]
