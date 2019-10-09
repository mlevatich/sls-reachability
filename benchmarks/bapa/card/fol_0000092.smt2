(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_dz:C. forall a_dy:A. nonempty(c_dz & a_dy)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_dz () (Set Int))
(assert (subset c_dz UNIVERALSET))
(assert (>= (* 2 (card c_dz)) (+ (- n t) 1)))

(declare-fun a_dy () (Set Int))
(assert (subset a_dy UNIVERALSET))
(assert (>= (card a_dy) (- n t)))


(assert (= (card (intersection c_dz a_dy)) 0))

(check-sat)
