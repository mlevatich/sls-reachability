(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_r:C. c_r + |UNIVERALSET| - n >= n or n <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_r () Int)
(assert (<= c_r n))
(assert (>= c_r 0))
(assert (>= (* 2 c_r) (+ (- n t) 1)))


(assert (and (< (- (+ c_r (card UNIVERALSET)) n) n) (> n 0)))

(check-sat)
