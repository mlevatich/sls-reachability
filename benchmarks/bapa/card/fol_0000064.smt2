(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_bz:C. C(c_bz)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_bz () (Set Int))
(assert (subset c_bz UNIVERALSET))
(assert (>= (* 2 (card c_bz)) (+ (- n t) 1)))


(assert (not (>= (* 2 (card c_bz)) (+ (- n t) 1))))

(check-sat)
