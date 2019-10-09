(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_bq:B. forall a_bp:A. forall a_bo:A. C(b_bq & a_bp & a_bo)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_bq () (Set Int))
(assert (subset b_bq UNIVERALSET))
(assert (>= (* 2 (card b_bq)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_bp () (Set Int))
(assert (subset a_bp UNIVERALSET))
(assert (>= (card a_bp) (- n t)))

(declare-fun a_bo () (Set Int))
(assert (subset a_bo UNIVERALSET))
(assert (>= (card a_bo) (- n t)))


(assert (not (>= (* 2 (card (intersection (intersection b_bq a_bp) a_bo))) (+ (- n t) 1))))

(check-sat)
