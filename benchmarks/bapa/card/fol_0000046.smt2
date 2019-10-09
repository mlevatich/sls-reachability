(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_v:A. forall a_u:A. C(a_v & a_u & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_v () (Set Int))
(assert (subset a_v UNIVERALSET))
(assert (>= (card a_v) (- n t)))

(declare-fun a_u () (Set Int))
(assert (subset a_u UNIVERALSET))
(assert (>= (card a_u) (- n t)))


(assert (not (>= (* 2 (card (intersection (intersection a_v a_u) (setminus UNIVERALSET f)))) (+ (- n t) 1))))

(check-sat)
