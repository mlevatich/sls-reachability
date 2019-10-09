(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_fo:C. forall b_fn:B. forall a_fm:A. forall a_fl:A. nonempty(c_fo & b_fn & a_fm & a_fl & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_fo () (Set Int))
(assert (subset c_fo UNIVERALSET))
(assert (>= (* 2 (card c_fo)) (+ (- n t) 1)))

(declare-fun b_fn () (Set Int))
(assert (subset b_fn UNIVERALSET))
(assert (>= (* 2 (card b_fn)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_fm () (Set Int))
(assert (subset a_fm UNIVERALSET))
(assert (>= (card a_fm) (- n t)))

(declare-fun a_fl () (Set Int))
(assert (subset a_fl UNIVERALSET))
(assert (>= (card a_fl) (- n t)))


(assert (= (card (intersection (intersection (intersection (intersection c_fo b_fn) a_fm) a_fl) (setminus UNIVERALSET f))) 0))

(check-sat)
