(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_bu:C. c_bu + |~f| - n >= (n - t + 1) / 2 or (n - t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_bu () Int)
(assert (<= c_bu n))
(assert (>= c_bu 0))
(assert (>= (* 2 c_bu) (+ (- n t) 1)))


(assert (and (< (* 2 (- (+ c_bu (card (setminus UNIVERALSET f))) n)) (+ (- n t) 1)) (> (+ (- n t) 1) (* 2 0))))

(check-sat)
