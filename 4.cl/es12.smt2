(declare-sort D)
(declare-const s D)

(declare-fun Mortal (D) Bool)
(declare-fun Lie (D) Bool)

(assert (exists ((x D))(and (Mortal x)(Lie x))))

(assert (Mortal s))
(assert (not(Lie s)))

(check-sat)



