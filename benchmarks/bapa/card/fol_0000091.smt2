(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_dx:C. nonempty(c_dx)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_dx () (Set Int))
(assert (subset c_dx UNIVERALSET))
(assert (>= (* 2 (card c_dx)) (+ (- n t) 1)))


(assert (= (card c_dx) 0))

(check-sat)
