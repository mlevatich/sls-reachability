(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_x:B. forall a_w:A. C(b_x & a_w & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_x () (Set Int))
(assert (subset b_x UNIVERALSET))
(assert (>= (* 2 (card b_x)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_w () (Set Int))
(assert (subset a_w UNIVERALSET))
(assert (>= (card a_w) (- n t)))


(assert (not (>= (* 2 (card (intersection (intersection b_x a_w) (setminus UNIVERALSET f)))) (+ (- n t) 1))))

(check-sat)
