(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_bf:B. forall a_be:A. C(b_bf & a_be & f & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_bf () (Set Int))
(assert (subset b_bf UNIVERALSET))
(assert (>= (* 2 (card b_bf)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_be () (Set Int))
(assert (subset a_be UNIVERALSET))
(assert (>= (card a_be) (- n t)))


(assert (not (>= (* 2 (card (intersection (intersection (intersection b_bf a_be) f) (setminus UNIVERALSET f)))) (+ (- n t) 1))))

(check-sat)
