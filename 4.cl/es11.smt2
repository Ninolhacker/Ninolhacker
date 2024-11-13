
; (declare-sort D)
; (declare-const s D)

; (declare-fun Mortal (D) Bool)
; (declare-fun Perfect (D) Bool)

; (assert (forall ((x D))(and (Mortal x)(not(Perfect x)))))

; (assert (Mortal s))
; (assert(not (Perfect(s))))
; (check-sat)

(declare-sort D)
(declare-const s D)

(declare-fun Mortal (D) Bool)
(declare-fun Perfect (D) Bool)


(assert (forall ((x D)) (and (Mortal x) (not (Perfect x)))))
(assert (Mortal s))
(assert (not(not (Perfect s))))
(check-sat)




