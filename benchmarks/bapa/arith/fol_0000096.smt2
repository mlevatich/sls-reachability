(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_ds:A. 3a_ds + |~f| - 3n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_ds () Int)
(assert (<= a_ds n))
(assert (>= a_ds 0))
(assert (>= a_ds (- n t)))


(assert (and (< (- (+ (* 3 a_ds) (card (setminus UNIVERALSET f))) (* 3 n)) 1) (> 1 0)))

(check-sat)
