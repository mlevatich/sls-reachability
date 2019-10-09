(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_ch:C. forall b_cg:B. nonempty(c_ch & b_cg & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_ch () (Set Int))
(assert (subset c_ch UNIVERALSET))
(assert (>= (* 2 (card c_ch)) (+ (- n t) 1)))

(declare-fun b_cg () (Set Int))
(assert (subset b_cg UNIVERALSET))
(assert (>= (* 2 (card b_cg)) (+ (+ n (* 3 t)) 1)))


(assert (= (card (intersection (intersection c_ch b_cg) (setminus UNIVERALSET f))) 0))

(check-sat)
