(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_bz:C. c_bz + |~f| - n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_bz () Int)
(assert (<= c_bz n))
(assert (>= c_bz 0))
(assert (>= (* 2 c_bz) (+ (- n t) 1)))


(assert (and (< (- (+ c_bz (card (setminus UNIVERALSET f))) n) 1) (> 1 0)))

(check-sat)
