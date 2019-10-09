(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_by:C. C(c_by & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_by () (Set Int))
(assert (subset c_by UNIVERALSET))
(assert (>= (* 2 (card c_by)) (+ (- n t) 1)))


(assert (not (>= (* 2 (card (intersection c_by (setminus UNIVERALSET f)))) (+ (- n t) 1))))

(check-sat)
