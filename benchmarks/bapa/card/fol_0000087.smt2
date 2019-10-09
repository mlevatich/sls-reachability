(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_dq:C. forall a_dp:A. nonempty(c_dq & a_dp)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_dq () (Set Int))
(assert (subset c_dq UNIVERALSET))
(assert (>= (* 2 (card c_dq)) (+ (- n t) 1)))

(declare-fun a_dp () (Set Int))
(assert (subset a_dp UNIVERALSET))
(assert (>= (card a_dp) (- n t)))


(assert (= (card (intersection c_dq a_dp)) 0))

(check-sat)
