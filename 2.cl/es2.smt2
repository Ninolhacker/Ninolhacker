(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)

(assert(not (= (=> (or p q) r)
        (and (=> p r) (=> q r)))))
    
(check-sat)