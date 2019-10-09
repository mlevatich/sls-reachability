(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_cf:C. forall a_ce:A. nonempty(c_cf & a_ce & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_cf () (Set Int))
(assert (subset c_cf UNIVERALSET))
(assert (>= (* 2 (card c_cf)) (+ (- n t) 1)))

(declare-fun a_ce () (Set Int))
(assert (subset a_ce UNIVERALSET))
(assert (>= (card a_ce) (- n t)))


(assert (= (card (intersection (intersection c_cf a_ce) (setminus UNIVERALSET f))) 0))

(check-sat)
