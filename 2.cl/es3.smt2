(declare-const p Bool) ;mary party
(declare-const q Bool) ;lucia goes
(declare-const r Bool) ;it reains

(assert(=> q p))
(assert(=> r (not q)))
(assert(not (=> (not r) p)))
(check-sat)