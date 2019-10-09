(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_cy:B. b_cy + |UNIVERALSET| - n >= (n + 3t + 1) / 2 or (n + 3t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_cy () Int)
(assert (<= b_cy n))
(assert (>= b_cy 0))
(assert (>= (* 2 b_cy) (+ (+ n (* 3 t)) 1)))


(assert (and (< (* 2 (- (+ b_cy (card UNIVERALSET)) n)) (+ (+ n (* 3 t)) 1)) (> (+ (+ n (* 3 t)) 1) (* 2 0))))

(check-sat)
