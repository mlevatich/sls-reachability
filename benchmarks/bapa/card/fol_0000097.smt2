(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_ek:B. forall a_ej:A. forall a_ei:A. nonempty(b_ek & a_ej & a_ei & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_ek () (Set Int))
(assert (subset b_ek UNIVERALSET))
(assert (>= (* 2 (card b_ek)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_ej () (Set Int))
(assert (subset a_ej UNIVERALSET))
(assert (>= (card a_ej) (- n t)))

(declare-fun a_ei () (Set Int))
(assert (subset a_ei UNIVERALSET))
(assert (>= (card a_ei) (- n t)))


(assert (= (card (intersection (intersection (intersection b_ek a_ej) a_ei) (setminus UNIVERALSET f))) 0))

(check-sat)
