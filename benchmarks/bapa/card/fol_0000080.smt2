(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_df:B. forall b_de:B. B(b_df & b_de)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_df () (Set Int))
(assert (subset b_df UNIVERALSET))
(assert (>= (* 2 (card b_df)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_de () (Set Int))
(assert (subset b_de UNIVERALSET))
(assert (>= (* 2 (card b_de)) (+ (+ n (* 3 t)) 1)))


(assert (not (>= (* 2 (card (intersection b_df b_de))) (+ (+ n (* 3 t)) 1))))

(check-sat)
