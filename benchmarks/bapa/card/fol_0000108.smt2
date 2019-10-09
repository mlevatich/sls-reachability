(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_gg:B. forall b_gf:B. forall a_ge:A. forall a_gd:A. forall a_gc:A. top(b_gg & b_gf & a_ge & a_gd & a_gc)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_gg () (Set Int))
(assert (subset b_gg UNIVERALSET))
(assert (>= (* 2 (card b_gg)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_gf () (Set Int))
(assert (subset b_gf UNIVERALSET))
(assert (>= (* 2 (card b_gf)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_ge () (Set Int))
(assert (subset a_ge UNIVERALSET))
(assert (>= (card a_ge) (- n t)))

(declare-fun a_gd () (Set Int))
(assert (subset a_gd UNIVERALSET))
(assert (>= (card a_gd) (- n t)))

(declare-fun a_gc () (Set Int))
(assert (subset a_gc UNIVERALSET))
(assert (>= (card a_gc) (- n t)))


(assert (>= (card (setminus UNIVERALSET (intersection (intersection (intersection (intersection b_gg b_gf) a_ge) a_gd) a_gc))) 1))

(check-sat)
