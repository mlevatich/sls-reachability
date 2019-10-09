(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_g:C. c_g + |UNIVERALSET| - n >= (n + 3t + 1) / 2 or (n + 3t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_g () Int)
(assert (<= c_g n))
(assert (>= c_g 0))
(assert (>= (* 2 c_g) (+ (- n t) 1)))


(assert (and (< (* 2 (- (+ c_g (card UNIVERALSET)) n)) (+ (+ n (* 3 t)) 1)) (> (+ (+ n (* 3 t)) 1) (* 2 0))))

(check-sat)
