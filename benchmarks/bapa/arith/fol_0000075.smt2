(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_cm:C. 2c_cm + |~f| - 2n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_cm () Int)
(assert (<= c_cm n))
(assert (>= c_cm 0))
(assert (>= (* 2 c_cm) (+ (- n t) 1)))


(assert (and (< (- (+ (* 2 c_cm) (card (setminus UNIVERALSET f))) (* 2 n)) 1) (> 1 0)))

(check-sat)
