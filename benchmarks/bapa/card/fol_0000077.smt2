(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_cx:C. forall b_cw:B. C(c_cx & b_cw & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_cx () (Set Int))
(assert (subset c_cx UNIVERALSET))
(assert (>= (* 2 (card c_cx)) (+ (- n t) 1)))

(declare-fun b_cw () (Set Int))
(assert (subset b_cw UNIVERALSET))
(assert (>= (* 2 (card b_cw)) (+ (+ n (* 3 t)) 1)))


(assert (not (>= (* 2 (card (intersection (intersection c_cx b_cw) (setminus UNIVERALSET f)))) (+ (- n t) 1))))

(check-sat)
