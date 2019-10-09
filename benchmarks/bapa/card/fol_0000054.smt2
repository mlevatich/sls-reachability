(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_bn:C. forall a_bm:A. C(c_bn & a_bm & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_bn () (Set Int))
(assert (subset c_bn UNIVERALSET))
(assert (>= (* 2 (card c_bn)) (+ (- n t) 1)))

(declare-fun a_bm () (Set Int))
(assert (subset a_bm UNIVERALSET))
(assert (>= (card a_bm) (- n t)))


(assert (not (>= (* 2 (card (intersection (intersection c_bn a_bm) (setminus UNIVERALSET f)))) (+ (- n t) 1))))

(check-sat)
