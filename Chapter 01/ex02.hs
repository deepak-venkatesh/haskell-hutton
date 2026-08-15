{-

sum [x]
= sum (x : [])
= x + sum []
= x + 0
= x

This is related to the idea of an identity element in abstract algebra.

For addition, 0 is the identity element since

    x + 0 = x

Therefore it is natural to define

    sum [] = 0

The inverse element (-x) is not needed here. The relevant algebraic
structure is essentially a monoid: an associative operation (+) together
with an identity element (0).


operation       identity
---------       --------
+               0
*               1
++              []


A monoid is a very simple algebraic structure: a set of values together with an operation that has two properties.

The operation is associative.
There is an identity element.

operation: +
identity:  0

Associativity means:
(a + b) + c = a + (b + c)

and identity means:
a + 0 = 0 + a = a

So:
(Int, +, 0)

monoid = associative operation + identity element


A group is stronger: it is a monoid where every element also has an inverse.

-}