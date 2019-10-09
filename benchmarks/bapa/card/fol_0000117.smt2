(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_ha:B. forall b_gz:B. forall b_gy:B. nonempty(b_ha & b_gz & b_gy)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_ha () (Set Int))
(assert (subset b_ha UNIVERALSET))
(assert (>= (* 2 (card b_ha)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_gz () (Set Int))
(assert (subset b_gz UNIVERALSET))
(assert (>= (* 2 (card b_gz)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_gy () (Set Int))
(assert (subset b_gy UNIVERALSET))
(assert (>= (* 2 (card b_gy)) (+ (+ n (* 3 t)) 1)))


(assert (= (card (intersection (intersection b_ha b_gz) b_gy)) 0))

(check-sat)
