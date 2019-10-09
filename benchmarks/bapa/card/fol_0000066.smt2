(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_cb:B. C(b_cb & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_cb () (Set Int))
(assert (subset b_cb UNIVERALSET))
(assert (>= (* 2 (card b_cb)) (+ (+ n (* 3 t)) 1)))


(assert (not (>= (* 2 (card (intersection b_cb (setminus UNIVERALSET f)))) (+ (- n t) 1))))

(check-sat)
