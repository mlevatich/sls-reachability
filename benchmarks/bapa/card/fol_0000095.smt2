(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_ee:A. forall a_ed:A. nonempty(a_ee & a_ed & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_ee () (Set Int))
(assert (subset a_ee UNIVERALSET))
(assert (>= (card a_ee) (- n t)))

(declare-fun a_ed () (Set Int))
(assert (subset a_ed UNIVERALSET))
(assert (>= (card a_ed) (- n t)))


(assert (= (card (intersection (intersection a_ee a_ed) (setminus UNIVERALSET f))) 0))

(check-sat)
