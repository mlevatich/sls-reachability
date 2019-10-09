(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_fw:B. forall b_fv:B. forall a_fu:A. forall a_ft:A. C(b_fw & b_fv & a_fu & a_ft & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_fw () (Set Int))
(assert (subset b_fw UNIVERALSET))
(assert (>= (* 2 (card b_fw)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_fv () (Set Int))
(assert (subset b_fv UNIVERALSET))
(assert (>= (* 2 (card b_fv)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_fu () (Set Int))
(assert (subset a_fu UNIVERALSET))
(assert (>= (card a_fu) (- n t)))

(declare-fun a_ft () (Set Int))
(assert (subset a_ft UNIVERALSET))
(assert (>= (card a_ft) (- n t)))


(assert (not (>= (* 2 (card (intersection (intersection (intersection (intersection b_fw b_fv) a_fu) a_ft) (setminus UNIVERALSET f)))) (+ (- n t) 1))))

(check-sat)
