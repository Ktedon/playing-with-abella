module eval.

eval (abs R) (abs R).
eval (app M N) V :- eval M (abs R), eval (R N) V.

of (abs R) (arrow T U) :- pi x\ (of x T => of (R x) U).
of (app M N) T :- of M (arrow U T), of N U.
