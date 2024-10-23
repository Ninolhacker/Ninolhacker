(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)

(assert (not (=> (=> p (and q r)) 
            (and (=> p q) (=> p r)))))

(check-sat)
