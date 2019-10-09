(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_cv:C. forall b_cu:B. B(c_cv & b_cu & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_cv () (Set Int))
(assert (subset c_cv UNIVERALSET))
(assert (>= (* 2 (card c_cv)) (+ (- n t) 1)))

(declare-fun b_cu () (Set Int))
(assert (subset b_cu UNIVERALSET))
(assert (>= (* 2 (card b_cu)) (+ (+ n (* 3 t)) 1)))


(assert (not (>= (* 2 (card (intersection (intersection c_cv b_cu) (setminus UNIVERALSET f)))) (+ (+ n (* 3 t)) 1))))

(check-sat)
