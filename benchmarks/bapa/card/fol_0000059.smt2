(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_bv:A. A(a_bv)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_bv () (Set Int))
(assert (subset a_bv UNIVERALSET))
(assert (>= (card a_bv) (- n t)))


(assert (not (>= (card a_bv) (- n t))))

(check-sat)
