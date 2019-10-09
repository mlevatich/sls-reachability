(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_c:B. b_c + |UNIVERALSET| - n >= n - t or n - t <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_c () Int)
(assert (<= b_c n))
(assert (>= b_c 0))
(assert (>= (* 2 b_c) (+ (+ n (* 3 t)) 1)))


(assert (and (< (- (+ b_c (card UNIVERALSET)) n) (- n t)) (> (- n t) 0)))

(check-sat)
