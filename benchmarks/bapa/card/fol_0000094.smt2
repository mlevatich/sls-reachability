(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_ec:C. nonempty(c_ec & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_ec () (Set Int))
(assert (subset c_ec UNIVERALSET))
(assert (>= (* 2 (card c_ec)) (+ (- n t) 1)))


(assert (= (card (intersection c_ec (setminus UNIVERALSET f))) 0))

(check-sat)
