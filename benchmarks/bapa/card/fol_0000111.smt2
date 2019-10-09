(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_gl:A. forall a_gk:A. C(a_gl & a_gk)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_gl () (Set Int))
(assert (subset a_gl UNIVERALSET))
(assert (>= (card a_gl) (- n t)))

(declare-fun a_gk () (Set Int))
(assert (subset a_gk UNIVERALSET))
(assert (>= (card a_gk) (- n t)))


(assert (not (>= (* 2 (card (intersection a_gl a_gk))) (+ (- n t) 1))))

(check-sat)
