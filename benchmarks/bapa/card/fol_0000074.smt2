(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_cr:C. forall b_cq:B. A(c_cr & b_cq & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_cr () (Set Int))
(assert (subset c_cr UNIVERALSET))
(assert (>= (* 2 (card c_cr)) (+ (- n t) 1)))

(declare-fun b_cq () (Set Int))
(assert (subset b_cq UNIVERALSET))
(assert (>= (* 2 (card b_cq)) (+ (+ n (* 3 t)) 1)))


(assert (not (>= (card (intersection (intersection c_cr b_cq) (setminus UNIVERALSET f))) (- n t))))

(check-sat)
