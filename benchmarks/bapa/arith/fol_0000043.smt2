(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; |~f| - 0 >= n or n <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))


(assert (and (< (- (card (setminus UNIVERALSET f)) 0) n) (> n 0)))

(check-sat)
