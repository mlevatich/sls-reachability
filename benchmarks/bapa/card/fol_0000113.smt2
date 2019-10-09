(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_gq:C. forall b_gp:B. forall b_go:B. nonempty(c_gq & b_gp & b_go)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_gq () (Set Int))
(assert (subset c_gq UNIVERALSET))
(assert (>= (* 2 (card c_gq)) (+ (- n t) 1)))

(declare-fun b_gp () (Set Int))
(assert (subset b_gp UNIVERALSET))
(assert (>= (* 2 (card b_gp)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_go () (Set Int))
(assert (subset b_go UNIVERALSET))
(assert (>= (* 2 (card b_go)) (+ (+ n (* 3 t)) 1)))


(assert (= (card (intersection (intersection c_gq b_gp) b_go)) 0))

(check-sat)
