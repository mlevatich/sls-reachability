(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_bu:A. A(a_bu & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_bu () (Set Int))
(assert (subset a_bu UNIVERALSET))
(assert (>= (card a_bu) (- n t)))


(assert (not (>= (card (intersection a_bu (setminus UNIVERALSET f))) (- n t))))

(check-sat)
