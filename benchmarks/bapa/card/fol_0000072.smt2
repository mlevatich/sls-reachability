(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_cn:C. forall c_cm:C. forall b_cl:B. nonempty(c_cn & c_cm & b_cl & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_cn () (Set Int))
(assert (subset c_cn UNIVERALSET))
(assert (>= (* 2 (card c_cn)) (+ (- n t) 1)))

(declare-fun c_cm () (Set Int))
(assert (subset c_cm UNIVERALSET))
(assert (>= (* 2 (card c_cm)) (+ (- n t) 1)))

(declare-fun b_cl () (Set Int))
(assert (subset b_cl UNIVERALSET))
(assert (>= (* 2 (card b_cl)) (+ (+ n (* 3 t)) 1)))


(assert (= (card (intersection (intersection (intersection c_cn c_cm) b_cl) (setminus UNIVERALSET f))) 0))

(check-sat)
