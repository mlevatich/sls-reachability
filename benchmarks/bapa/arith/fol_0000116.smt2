(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_fe:B. forall a_fd:A. 2b_fe + a_fd + |UNIVERALSET| - 3n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_fe () Int)
(assert (<= b_fe n))
(assert (>= b_fe 0))
(assert (>= (* 2 b_fe) (+ (+ n (* 3 t)) 1)))

(declare-fun a_fd () Int)
(assert (<= a_fd n))
(assert (>= a_fd 0))
(assert (>= a_fd (- n t)))


(assert (and (< (- (+ (+ (* 2 b_fe) a_fd) (card UNIVERALSET)) (* 3 n)) 1) (> 1 0)))

(check-sat)
