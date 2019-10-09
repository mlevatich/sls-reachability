(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_bj:C. forall b_bi:B. C(c_bj & b_bi & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_bj () (Set Int))
(assert (subset c_bj UNIVERALSET))
(assert (>= (* 2 (card c_bj)) (+ (- n t) 1)))

(declare-fun b_bi () (Set Int))
(assert (subset b_bi UNIVERALSET))
(assert (>= (* 2 (card b_bi)) (+ (+ n (* 3 t)) 1)))


(assert (not (>= (* 2 (card (intersection (intersection c_bj b_bi) (setminus UNIVERALSET f)))) (+ (- n t) 1))))

(check-sat)
