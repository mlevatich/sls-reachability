(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_p:B. b_p + |UNIVERALSET| - n >= n or n <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_p () Int)
(assert (<= b_p n))
(assert (>= b_p 0))
(assert (>= (* 2 b_p) (+ (+ n (* 3 t)) 1)))


(assert (and (< (- (+ b_p (card UNIVERALSET)) n) n) (> n 0)))

(check-sat)
