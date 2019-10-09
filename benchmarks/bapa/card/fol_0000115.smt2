(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_gu:B. forall b_gt:B. nonempty(b_gu & b_gt)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_gu () (Set Int))
(assert (subset b_gu UNIVERALSET))
(assert (>= (* 2 (card b_gu)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_gt () (Set Int))
(assert (subset b_gt UNIVERALSET))
(assert (>= (* 2 (card b_gt)) (+ (+ n (* 3 t)) 1)))


(assert (= (card (intersection b_gu b_gt)) 0))

(check-sat)
