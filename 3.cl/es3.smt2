(declare-const a Bool) 
(declare-const b Bool) 
(declare-const c Bool) 

(define-fun first ((x Bool) (y Bool) (z Bool)) Bool 
    (or
        (and (not x) y (not z))
        (and x y (not z))
        (and x y z)
    )
)

(define-fun second ((x Bool) (y Bool) (z Bool)) Bool 
    (or
        (and x y)
        (and y (not z))
    )
)

(assert (= (first a b c) (second a b c)))

(check-sat)
