(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_ca:A. C(a_ca & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_ca () (Set Int))
(assert (subset a_ca UNIVERALSET))
(assert (>= (card a_ca) (- n t)))


(assert (not (>= (* 2 (card (intersection a_ca (setminus UNIVERALSET f)))) (+ (- n t) 1))))

(check-sat)
