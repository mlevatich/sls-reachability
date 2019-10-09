(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_fh:A. 2a_fh + |~f| - 2n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_fh () Int)
(assert (<= a_fh n))
(assert (>= a_fh 0))
(assert (>= a_fh (- n t)))


(assert (and (< (- (+ (* 2 a_fh) (card (setminus UNIVERALSET f))) (* 2 n)) 1) (> 1 0)))

(check-sat)
