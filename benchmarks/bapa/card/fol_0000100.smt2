(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_ey:C. forall b_ex:B. forall b_ew:B. forall a_ev:A. forall a_eu:A. nonempty(c_ey & b_ex & b_ew & a_ev & a_eu & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_ey () (Set Int))
(assert (subset c_ey UNIVERALSET))
(assert (>= (* 2 (card c_ey)) (+ (- n t) 1)))

(declare-fun b_ex () (Set Int))
(assert (subset b_ex UNIVERALSET))
(assert (>= (* 2 (card b_ex)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_ew () (Set Int))
(assert (subset b_ew UNIVERALSET))
(assert (>= (* 2 (card b_ew)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_ev () (Set Int))
(assert (subset a_ev UNIVERALSET))
(assert (>= (card a_ev) (- n t)))

(declare-fun a_eu () (Set Int))
(assert (subset a_eu UNIVERALSET))
(assert (>= (card a_eu) (- n t)))


(assert (= (card (intersection (intersection (intersection (intersection (intersection c_ey b_ex) b_ew) a_ev) a_eu) (setminus UNIVERALSET f))) 0))

(check-sat)
