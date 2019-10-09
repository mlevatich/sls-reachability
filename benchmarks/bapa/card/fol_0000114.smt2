(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_gs:C. forall b_gr:B. nonempty(c_gs & b_gr)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_gs () (Set Int))
(assert (subset c_gs UNIVERALSET))
(assert (>= (* 2 (card c_gs)) (+ (- n t) 1)))

(declare-fun b_gr () (Set Int))
(assert (subset b_gr UNIVERALSET))
(assert (>= (* 2 (card b_gr)) (+ (+ n (* 3 t)) 1)))


(assert (= (card (intersection c_gs b_gr)) 0))

(check-sat)
