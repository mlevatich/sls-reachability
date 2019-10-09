(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_bx:A. nonempty(a_bx & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_bx () (Set Int))
(assert (subset a_bx UNIVERALSET))
(assert (>= (card a_bx) (- n t)))


(assert (= (card (intersection a_bx (setminus UNIVERALSET f))) 0))

(check-sat)
