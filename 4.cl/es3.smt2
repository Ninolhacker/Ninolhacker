
(declare-sort M)
(declare-const guido M)
(declare-const cesare M)
(declare-fun Cut(M M) Bool)

(assert (forall ((x M)) (=>(exists ((y M)) (Cut x y)) (forall ((z M)) (Cut z x)))))
(assert (Cut guido cesare))
(assert (not(Cut guido guido)))
(check-sat)