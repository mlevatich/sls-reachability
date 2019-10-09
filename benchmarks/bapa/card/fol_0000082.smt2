(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_di:B. forall b_dh:B. C(b_di & b_dh)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_di () (Set Int))
(assert (subset b_di UNIVERALSET))
(assert (>= (* 2 (card b_di)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_dh () (Set Int))
(assert (subset b_dh UNIVERALSET))
(assert (>= (* 2 (card b_dh)) (+ (+ n (* 3 t)) 1)))


(assert (not (>= (* 2 (card (intersection b_di b_dh))) (+ (- n t) 1))))

(check-sat)
