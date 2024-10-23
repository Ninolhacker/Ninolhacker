(define-fun xor3 ((x Bool) (y Bool) (z Bool)) Bool 
                (and 
                         (or x y z) 
                         ((_ at-most 1) x y z)
                )
)

; Belize
(declare-const belize_red Bool)
(declare-const belize_blue Bool)
(declare-const belize_green Bool)
(assert (xor3 belize_red belize_blue belize_green))

; Guatemala
(declare-const guatemala_red Bool)
(declare-const guatemala_blue Bool)
(declare-const guatemala_green Bool)
(assert (xor3 guatemala_red guatemala_blue guatemala_green))

; El Salvador
(declare-const el_salvador_red Bool)
(declare-const el_salvador_blue Bool)
(declare-const el_salvador_green Bool)
(assert (xor3 el_salvador_red el_salvador_blue el_salvador_green))

; Honduras
(declare-const honduras_red Bool)
(declare-const honduras_blue Bool)
(declare-const honduras_green Bool)
(assert (xor3 honduras_red honduras_blue honduras_green))

; Nicaragua
(declare-const nicaragua_red Bool)
(declare-const nicaragua_blue Bool)
(declare-const nicaragua_green Bool)
(assert (xor3 nicaragua_red nicaragua_blue nicaragua_green))

; Costa Rica
(declare-const costa_rica_red Bool)
(declare-const costa_rica_blue Bool)
(declare-const costa_rica_green Bool)
(assert (xor3 costa_rica_red costa_rica_blue costa_rica_green))

; Panama
(declare-const panama_red Bool)
(declare-const panama_blue Bool)
(declare-const panama_green Bool)
(assert (xor3 panama_red panama_blue panama_green))

; Asserzioni di esclusione
(assert (not (and belize_red guatemala_red)))
(assert (not (and belize_blue guatemala_blue)))
(assert (not (and belize_green guatemala_green)))

(assert (not (and guatemala_red el_salvador_red)))
(assert (not (and guatemala_blue el_salvador_blue)))
(assert (not (and guatemala_green el_salvador_green)))

(assert (not (and guatemala_red honduras_red)))
(assert (not (and guatemala_blue honduras_blue)))
(assert (not (and guatemala_green honduras_green)))

(assert (not (and el_salvador_red honduras_red)))
(assert (not (and el_salvador_blue nicaragua_blue)))
(assert (not (and andel_salvador_green nicaragua_green)))

(assert (not (and honduras_red nicaragua_red)))
(assert (not (and honduras_blue nicaragua_blue)))
(assert (not (and honduras_green nicaragua_green)))

(assert (not (and nicaragua_red costa_rica_red)))
(assert (not (and nicaragua_blue costa_rica_blue)))
(assert (not (and nicaragua_green costa_rica_green)))

(assert (not (and costa_rica_red panama_red)))
(assert (not (and costa_rica_blue panama_blue)))
(assert (not (and costa_rica_green panama_green)))

(check-sat)
(get-model)
