-- the list comprehension needs to be [f x | x <- xs, p x] to be expressed using map and filter
-- means we have to map f to xs, that is the first thing
-- means we have to the mapping only where each x == p, so first lets filter then map

map f (filter p xs)

