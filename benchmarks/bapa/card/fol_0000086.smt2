(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_do:A. nonempty(a_do & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_do () (Set Int))
(assert (subset a_do UNIVERALSET))
(assert (>= (card a_do) (- n t)))


(assert (= (card (intersection a_do (setminus UNIVERALSET f))) 0))

(check-sat)
