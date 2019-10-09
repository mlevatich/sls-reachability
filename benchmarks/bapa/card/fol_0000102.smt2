(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_fg:C. forall b_ff:B. forall b_fe:B. forall a_fd:A. nonempty(c_fg & b_ff & b_fe & a_fd & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_fg () (Set Int))
(assert (subset c_fg UNIVERALSET))
(assert (>= (* 2 (card c_fg)) (+ (- n t) 1)))

(declare-fun b_ff () (Set Int))
(assert (subset b_ff UNIVERALSET))
(assert (>= (* 2 (card b_ff)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_fe () (Set Int))
(assert (subset b_fe UNIVERALSET))
(assert (>= (* 2 (card b_fe)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_fd () (Set Int))
(assert (subset a_fd UNIVERALSET))
(assert (>= (card a_fd) (- n t)))


(assert (= (card (intersection (intersection (intersection (intersection c_fg b_ff) b_fe) a_fd) (setminus UNIVERALSET f))) 0))

(check-sat)
