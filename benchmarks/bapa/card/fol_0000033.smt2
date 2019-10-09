(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall nonempty_k:nonempty. nonempty_k + |UNIVERALSET| - n >= (n + 3t + 1) / 2 or (n + 3t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun nonempty_k () Int)
(assert (<= nonempty_k n))
(assert (>= nonempty_k 0))
(assert (>= nonempty_k 1))


(assert (and (< (* 2 (- (+ nonempty_k (card UNIVERALSET)) n)) (+ (+ n (* 3 t)) 1)) (> (+ (+ n (* 3 t)) 1) (* 2 0))))

(check-sat)
