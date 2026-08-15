thirdHeadTail :: [a] -> a
-- | it has at least 3 elements as given in the problem statement
thirdHeadTail xs = head(tail(tail xs))

thirdIndex :: [a] -> a
-- | same constraint as above
thirdIndex xs = xs !! 2

thirdPatternMatch :: [a] -> a
-- | same constraint as above
thirdPatternMatch (_:_:x:_)  = x

main :: IO ()
main = do
    let testList = [1,2,3,4,5,6,7,8,9,10]
    putStrLn $ "First method: " ++ show(thirdHeadTail testList)
    putStrLn $ "Second method: " ++ show(thirdIndex testList)
    putStrLn $ "Third method: " ++ show(thirdPatternMatch testList)