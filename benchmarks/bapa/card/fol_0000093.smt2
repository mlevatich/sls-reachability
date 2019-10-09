(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_eb:C. forall b_ea:B. nonempty(c_eb & b_ea)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_eb () (Set Int))
(assert (subset c_eb UNIVERALSET))
(assert (>= (* 2 (card c_eb)) (+ (- n t) 1)))

(declare-fun b_ea () (Set Int))
(assert (subset b_ea UNIVERALSET))
(assert (>= (* 2 (card b_ea)) (+ (+ n (* 3 t)) 1)))


(assert (= (card (intersection c_eb b_ea)) 0))

(check-sat)
