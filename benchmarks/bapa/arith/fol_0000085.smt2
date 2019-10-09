(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_dd:C. c_dd + |~f| - n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_dd () Int)
(assert (<= c_dd n))
(assert (>= c_dd 0))
(assert (>= (* 2 c_dd) (+ (- n t) 1)))


(assert (and (< (- (+ c_dd (card (setminus UNIVERALSET f))) n) 1) (> 1 0)))

(check-sat)
