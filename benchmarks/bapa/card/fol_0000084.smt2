(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_dm:C. forall a_dl:A. nonempty(c_dm & a_dl & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_dm () (Set Int))
(assert (subset c_dm UNIVERALSET))
(assert (>= (* 2 (card c_dm)) (+ (- n t) 1)))

(declare-fun a_dl () (Set Int))
(assert (subset a_dl UNIVERALSET))
(assert (>= (card a_dl) (- n t)))


(assert (= (card (intersection (intersection c_dm a_dl) (setminus UNIVERALSET f))) 0))

(check-sat)
