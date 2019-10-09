(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_da:C. forall b_cz:B. forall a_cy:A. nonempty(c_da & b_cz & a_cy)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_da () (Set Int))
(assert (subset c_da UNIVERALSET))
(assert (>= (* 2 (card c_da)) (+ (- n t) 1)))

(declare-fun b_cz () (Set Int))
(assert (subset b_cz UNIVERALSET))
(assert (>= (* 2 (card b_cz)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_cy () (Set Int))
(assert (subset a_cy UNIVERALSET))
(assert (>= (card a_cy) (- n t)))


(assert (= (card (intersection (intersection c_da b_cz) a_cy)) 0))

(check-sat)
