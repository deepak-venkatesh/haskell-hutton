-- Toy Luhn Algorithm 

luhnDouble :: Int -> Int
luhnDouble n = 
    if double  > 9 then double - 9 else double
    where
        double = n * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d =
    luhnSum `mod` 10 == 0
    where
        luhnSum = luhnDouble a + b + luhnDouble c + d

