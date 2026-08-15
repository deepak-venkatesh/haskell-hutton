-- | using conditional
safetailCond :: [a] -> [a]
safetailCond xs = if null xs then xs else tail(xs)

-- | using guards now
safetailGuard :: [a] -> [a]
safetailGuard xs
    | null xs =  xs
    | otherwise = tail xs

-- | using pattern matching now
safetailPattern :: [a] -> [a]
safetailPattern (_:xs) = xs
safetailPattern [] =  []


main :: IO()
main = do
    let testList1 = [1,2,3,4,5]
    let testListEmpty = [] :: [Int]
    putStrLn $ "Tail of Non-empty List using conditional: " ++ show(safetailCond testList1 )
    putStrLn $ "Tail of Empty List using conditional: " ++ show(safetailCond testListEmpty)
    putStrLn $ "Tail of Non-empty List using guards: " ++ show(safetailGuard testList1 )
    putStrLn $ "Tail of Empty List using guards: " ++ show(safetailGuard testListEmpty)
    putStrLn $ "Tail of Non-empty List using pattern matching: " ++ show(safetailPattern testList1 )
    putStrLn $ "Tail of Empty List using pattern matching: " ++ show(safetailPattern testListEmpty)



