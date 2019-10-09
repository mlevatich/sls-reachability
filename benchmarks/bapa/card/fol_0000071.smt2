(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_ck:C. forall b_cj:B. forall b_ci:B. nonempty(c_ck & b_cj & b_ci & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_ck () (Set Int))
(assert (subset c_ck UNIVERALSET))
(assert (>= (* 2 (card c_ck)) (+ (- n t) 1)))

(declare-fun b_cj () (Set Int))
(assert (subset b_cj UNIVERALSET))
(assert (>= (* 2 (card b_cj)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_ci () (Set Int))
(assert (subset b_ci UNIVERALSET))
(assert (>= (* 2 (card b_ci)) (+ (+ n (* 3 t)) 1)))


(assert (= (card (intersection (intersection (intersection c_ck b_cj) b_ci) (setminus UNIVERALSET f))) 0))

(check-sat)
