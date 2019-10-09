(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_cp:C. forall b_co:B. nonempty(c_cp & b_co & f & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_cp () (Set Int))
(assert (subset c_cp UNIVERALSET))
(assert (>= (* 2 (card c_cp)) (+ (- n t) 1)))

(declare-fun b_co () (Set Int))
(assert (subset b_co UNIVERALSET))
(assert (>= (* 2 (card b_co)) (+ (+ n (* 3 t)) 1)))


(assert (= (card (intersection (intersection (intersection c_cp b_co) f) (setminus UNIVERALSET f))) 0))

(check-sat)
