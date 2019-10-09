(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_ba:B. forall b_z:B. forall a_y:A. C(b_ba & b_z & a_y & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_ba () (Set Int))
(assert (subset b_ba UNIVERALSET))
(assert (>= (* 2 (card b_ba)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_z () (Set Int))
(assert (subset b_z UNIVERALSET))
(assert (>= (* 2 (card b_z)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_y () (Set Int))
(assert (subset a_y UNIVERALSET))
(assert (>= (card a_y) (- n t)))


(assert (not (>= (* 2 (card (intersection (intersection (intersection b_ba b_z) a_y) (setminus UNIVERALSET f)))) (+ (- n t) 1))))

(check-sat)
