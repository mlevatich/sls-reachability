(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_hf:A. forall a_he:A. nonempty(a_hf & a_he & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_hf () (Set Int))
(assert (subset a_hf UNIVERALSET))
(assert (>= (card a_hf) (- n t)))

(declare-fun a_he () (Set Int))
(assert (subset a_he UNIVERALSET))
(assert (>= (card a_he) (- n t)))


(assert (= (card (intersection (intersection a_hf a_he) (setminus UNIVERALSET f))) 0))

(check-sat)
