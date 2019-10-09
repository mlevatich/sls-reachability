(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_u:A. 2a_u + |~f| - 2n >= (n - t + 1) / 2 or (n - t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_u () Int)
(assert (<= a_u n))
(assert (>= a_u 0))
(assert (>= a_u (- n t)))


(assert (and (< (* 2 (- (+ (* 2 a_u) (card (setminus UNIVERALSET f))) (* 2 n))) (+ (- n t) 1)) (> (+ (- n t) 1) (* 2 0))))

(check-sat)
