(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_gi:A. forall a_gh:A. C(a_gi & a_gh & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_gi () (Set Int))
(assert (subset a_gi UNIVERALSET))
(assert (>= (card a_gi) (- n t)))

(declare-fun a_gh () (Set Int))
(assert (subset a_gh UNIVERALSET))
(assert (>= (card a_gh) (- n t)))


(assert (not (>= (* 2 (card (intersection (intersection a_gi a_gh) (setminus UNIVERALSET f)))) (+ (- n t) 1))))

(check-sat)
