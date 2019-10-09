(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_t:A. C(a_t & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_t () (Set Int))
(assert (subset a_t UNIVERALSET))
(assert (>= (card a_t) (- n t)))


(assert (not (>= (* 2 (card (intersection a_t (setminus UNIVERALSET f)))) (+ (- n t) 1))))

(check-sat)
