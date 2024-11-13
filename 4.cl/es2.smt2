(push)
(declare-sort D)
(declare-fun Mine(D) Bool)
(declare-fun Your(D) Bool)
(declare-fun Sky(D) Bool)

(assert (exists ((x D))(and (Your x)(not(Mine x)))))
(assert (forall ((x D)) (=>(Mine x)(Sky x))))
(assert (not(exists ((x D)) (and (Your x )(not(Sky x))))))


(check-sat)
(pop)

