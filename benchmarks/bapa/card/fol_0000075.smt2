(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_ct:C. forall c_cs:C. nonempty(c_ct & c_cs & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_ct () (Set Int))
(assert (subset c_ct UNIVERALSET))
(assert (>= (* 2 (card c_ct)) (+ (- n t) 1)))

(declare-fun c_cs () (Set Int))
(assert (subset c_cs UNIVERALSET))
(assert (>= (* 2 (card c_cs)) (+ (- n t) 1)))


(assert (= (card (intersection (intersection c_ct c_cs) (setminus UNIVERALSET f))) 0))

(check-sat)
