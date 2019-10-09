(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_dw:C. forall c_dv:C. nonempty(c_dw & c_dv)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_dw () (Set Int))
(assert (subset c_dw UNIVERALSET))
(assert (>= (* 2 (card c_dw)) (+ (- n t) 1)))

(declare-fun c_dv () (Set Int))
(assert (subset c_dv UNIVERALSET))
(assert (>= (* 2 (card c_dv)) (+ (- n t) 1)))


(assert (= (card (intersection c_dw c_dv)) 0))

(check-sat)
