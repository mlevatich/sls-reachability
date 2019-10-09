(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall nonempty_s:nonempty. nonempty_s + |UNIVERALSET| - n >= n or n <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun nonempty_s () Int)
(assert (<= nonempty_s n))
(assert (>= nonempty_s 0))
(assert (>= nonempty_s 1))


(assert (and (< (- (+ nonempty_s (card UNIVERALSET)) n) n) (> n 0)))

(check-sat)
