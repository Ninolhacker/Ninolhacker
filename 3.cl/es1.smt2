(push)
    (declare-const p Bool) ;find tickert
    (declare-const q Bool) ;make reservation

    (assert(=> p q))
    (assert(not q))
    (assert(not(not p)))

    (check-sat)
(pop)

(push)
    (declare-const p Bool) ;paul
    (declare-const m Bool) ;mary
    (declare-const pe Bool) ;peter
    (declare-const a Bool) ;andrew
    (declare-const j Bool) ;john
    
    (assert(=> p (and m j)))
    (assert(=> j (not (or pe a))))
    (assert(not(=>(or pe a) (not p))))

    (check-sat)
    (get-model)
(pop)