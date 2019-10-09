(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_fi:A. 3a_fi + |UNIVERALSET| - 3n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_fi () Int)
(assert (<= a_fi n))
(assert (>= a_fi 0))
(assert (>= a_fi (- n t)))


(assert (and (< (- (+ (* 3 a_fi) (card UNIVERALSET)) (* 3 n)) 1) (> 1 0)))

(check-sat)
