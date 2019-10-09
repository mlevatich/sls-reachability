(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_bh:B. forall a_bg:A. A(b_bh & a_bg & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_bh () (Set Int))
(assert (subset b_bh UNIVERALSET))
(assert (>= (* 2 (card b_bh)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_bg () (Set Int))
(assert (subset a_bg UNIVERALSET))
(assert (>= (card a_bg) (- n t)))


(assert (not (>= (card (intersection (intersection b_bh a_bg) (setminus UNIVERALSET f))) (- n t))))

(check-sat)
