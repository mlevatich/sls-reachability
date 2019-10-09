(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_gx:B. forall b_gw:B. forall a_gv:A. nonempty(b_gx & b_gw & a_gv)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_gx () (Set Int))
(assert (subset b_gx UNIVERALSET))
(assert (>= (* 2 (card b_gx)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_gw () (Set Int))
(assert (subset b_gw UNIVERALSET))
(assert (>= (* 2 (card b_gw)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_gv () (Set Int))
(assert (subset a_gv UNIVERALSET))
(assert (>= (card a_gv) (- n t)))


(assert (= (card (intersection (intersection b_gx b_gw) a_gv)) 0))

(check-sat)
