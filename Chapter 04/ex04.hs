
-- | || is called disjunction 


First way

True || True = True
True || False = True
False || True = True
False || False = False

Second way 
False || False = False
_ || _ = True 

Third way 
False || b = b 
True || _ = True 

Foruth way 
b || c 
    | b == c = b 
    | otherwise = True 