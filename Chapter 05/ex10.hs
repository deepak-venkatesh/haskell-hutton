import Data.Char

let2int :: Char -> Int
let2int c = ord c - ord 'a'

int2let :: Int -> Char
int2let n = chr (ord 'a' + n)

upper2int :: Char -> Int
upper2int c = ord c - ord 'A'

int2upper :: Int -> Char
int2upper n = chr (ord 'A' + n)

shift :: Int -> Char -> Char
shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
          | isUpper c = int2upper ((upper2int c + n) `mod` 26)
          | otherwise = c

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]

main :: IO()
main = do
    let message  = "Hello, World!"
    let decodeMessage = "Khoor, Zruog!"
    putStrLn $ "Encoding: " ++ show(encode 3 message)
    putStrLn $ "Decoding: " ++ show(encode (-3) decodeMessage)
