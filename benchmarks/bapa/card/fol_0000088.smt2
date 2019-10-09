(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_ds:A. forall a_dr:A. nonempty(a_ds & a_dr & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_ds () (Set Int))
(assert (subset a_ds UNIVERALSET))
(assert (>= (card a_ds) (- n t)))

(declare-fun a_dr () (Set Int))
(assert (subset a_dr UNIVERALSET))
(assert (>= (card a_dr) (- n t)))


(assert (= (card (intersection (intersection a_ds a_dr) (setminus UNIVERALSET f))) 0))

(check-sat)
