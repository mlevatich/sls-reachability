(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall top_o:top. top_o + |UNIVERALSET| - n >= n - t or n - t <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun top_o () Int)
(assert (<= top_o n))
(assert (>= top_o 0))
(assert (>= top_o n))


(assert (and (< (- (+ top_o (card UNIVERALSET)) n) (- n t)) (> (- n t) 0)))

(check-sat)
