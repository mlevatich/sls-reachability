(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_eh:A. forall a_eg:A. forall a_ef:A. nonempty(a_eh & a_eg & a_ef & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_eh () (Set Int))
(assert (subset a_eh UNIVERALSET))
(assert (>= (card a_eh) (- n t)))

(declare-fun a_eg () (Set Int))
(assert (subset a_eg UNIVERALSET))
(assert (>= (card a_eg) (- n t)))

(declare-fun a_ef () (Set Int))
(assert (subset a_ef UNIVERALSET))
(assert (>= (card a_ef) (- n t)))


(assert (= (card (intersection (intersection (intersection a_eh a_eg) a_ef) (setminus UNIVERALSET f))) 0))

(check-sat)
