{-

ghci> :type ['a','b','c']
['a','b','c'] :: [Char]

ghci> :type ('a','b','c')
('a','b','c') :: (Char, Char, Char)

ghci> :type [(False,'0'),(True,'1')]
[(False,'0'),(True,'1')] :: [(Bool, Char)]

ghci> :type ([False,True],['0','1'])
([False,True],['0','1']) :: ([Bool], [Char])

ghci> :type [tail, init, reverse]
[tail, init, reverse] :: [[a] -> [a]]

-}