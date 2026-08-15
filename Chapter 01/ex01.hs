{-

double (double 2)
double (2 + 2)
(2 + 2) + (2 + 2)
4 + 4
8

There are actually more ways

Let double x = x + x.

For

    double (double 2)

there are two possible first reductions.

1. Reduce the inner double first:

    double (double 2)
-> double (2 + 2)

   From here there are 3 possible reduction sequences:
   either evaluate (2 + 2) before expanding the outer double,
   or expand the outer double first and evaluate the two resulting
   additions in either order.

2. Reduce the outer double first:

    double (double 2)
    -> double 2 + double 2

   Each side requires two reductions:

       double 2 -> 2 + 2 -> 4

   The reductions on the left and right can be interleaved in
   6 different orders.

Therefore the total number of reduction sequences is

    3 + 6 = 9.

In the book Introduction to Functional Programming by Richard Bird (1988) the first exercise asks us exactly the same question 
Count the number of different ways to reduce the function to normal form
square(square(3 + 7))
This is far more tougher to solve!

-}