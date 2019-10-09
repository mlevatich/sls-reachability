(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_dl:C. c_dl + |UNIVERALSET| - n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_dl () Int)
(assert (<= c_dl n))
(assert (>= c_dl 0))
(assert (>= (* 2 c_dl) (+ (- n t) 1)))


(assert (and (< (- (+ c_dl (card UNIVERALSET)) n) 1) (> 1 0)))

(check-sat)
