(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_bd:C. forall b_bc:B. forall a_bb:A. C(c_bd & b_bc & a_bb & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_bd () (Set Int))
(assert (subset c_bd UNIVERALSET))
(assert (>= (* 2 (card c_bd)) (+ (- n t) 1)))

(declare-fun b_bc () (Set Int))
(assert (subset b_bc UNIVERALSET))
(assert (>= (* 2 (card b_bc)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_bb () (Set Int))
(assert (subset a_bb UNIVERALSET))
(assert (>= (card a_bb) (- n t)))


(assert (not (>= (* 2 (card (intersection (intersection (intersection c_bd b_bc) a_bb) (setminus UNIVERALSET f)))) (+ (- n t) 1))))

(check-sat)
