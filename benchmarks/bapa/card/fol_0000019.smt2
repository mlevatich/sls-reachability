(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_b:A. a_b + |UNIVERALSET| - n >= (n + 3t + 1) / 2 or (n + 3t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_b () Int)
(assert (<= a_b n))
(assert (>= a_b 0))
(assert (>= a_b (- n t)))


(assert (and (< (* 2 (- (+ a_b (card UNIVERALSET)) n)) (+ (+ n (* 3 t)) 1)) (> (+ (+ n (* 3 t)) 1) (* 2 0))))

(check-sat)
