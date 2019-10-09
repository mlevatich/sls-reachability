(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_bt:B. forall a_bs:A. forall a_br:A. top(b_bt & a_bs & a_br)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_bt () (Set Int))
(assert (subset b_bt UNIVERALSET))
(assert (>= (* 2 (card b_bt)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_bs () (Set Int))
(assert (subset a_bs UNIVERALSET))
(assert (>= (card a_bs) (- n t)))

(declare-fun a_br () (Set Int))
(assert (subset a_br UNIVERALSET))
(assert (>= (card a_br) (- n t)))


(assert (>= (card (setminus UNIVERALSET (intersection (intersection b_bt a_bs) a_br))) 1))

(check-sat)
