;peter is attending either or the english or spanish
;if peter attends the spanish, he meet john
;peter is not meeting john

(declare-const p Bool) ;peeter english
(declare-const q Bool) ;peeter spanish
(declare-const r Bool) ;meets john

(assert(xor p q))
(assert(and q r))
(assert(not r))
(assert(not p))

(check-sat)