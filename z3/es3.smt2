(declare-const p Bool)
(declare-const q Bool)

(assert(and (and(=> p q) (not(and p q)))
        (not(or(not p) (not q)))
))
    
(check-sat)
(get-model)