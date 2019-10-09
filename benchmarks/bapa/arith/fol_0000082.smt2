(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_cz:B. 2b_cz + |UNIVERALSET| - 2n >= (n - t + 1) / 2 or (n - t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_cz () Int)
(assert (<= b_cz n))
(assert (>= b_cz 0))
(assert (>= (* 2 b_cz) (+ (+ n (* 3 t)) 1)))


(assert (and (< (* 2 (- (+ (* 2 b_cz) (card UNIVERALSET)) (* 2 n))) (+ (- n t) 1)) (> (+ (- n t) 1) (* 2 0))))

(check-sat)
