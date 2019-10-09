(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_du:B. forall a_dt:A. nonempty(b_du & a_dt & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_du () (Set Int))
(assert (subset b_du UNIVERALSET))
(assert (>= (* 2 (card b_du)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_dt () (Set Int))
(assert (subset a_dt UNIVERALSET))
(assert (>= (card a_dt) (- n t)))


(assert (= (card (intersection (intersection b_du a_dt) (setminus UNIVERALSET f))) 0))

(check-sat)
