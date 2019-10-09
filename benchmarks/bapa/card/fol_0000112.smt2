(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_gn:A. forall a_gm:A. nonempty(a_gn & a_gm & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_gn () (Set Int))
(assert (subset a_gn UNIVERALSET))
(assert (>= (card a_gn) (- n t)))

(declare-fun a_gm () (Set Int))
(assert (subset a_gm UNIVERALSET))
(assert (>= (card a_gm) (- n t)))


(assert (= (card (intersection (intersection a_gn a_gm) (setminus UNIVERALSET f))) 0))

(check-sat)
