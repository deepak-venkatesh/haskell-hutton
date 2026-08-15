{-

Function types cannot in general be instances of Eq because determining whether two functions are equal requires checking that they
produce equal results for every possible argument. If the argument type has infinitely many (or an impractically large number of) values,
this cannot in general be done. Function equality is feasible when the argument type has finitely many possible values, because the functions
can be compared on every argument.

-}