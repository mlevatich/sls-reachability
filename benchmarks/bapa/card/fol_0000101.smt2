(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_fc:B. forall b_fb:B. forall a_fa:A. forall a_ez:A. nonempty(b_fc & b_fb & a_fa & a_ez & f & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_fc () (Set Int))
(assert (subset b_fc UNIVERALSET))
(assert (>= (* 2 (card b_fc)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_fb () (Set Int))
(assert (subset b_fb UNIVERALSET))
(assert (>= (* 2 (card b_fb)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_fa () (Set Int))
(assert (subset a_fa UNIVERALSET))
(assert (>= (card a_fa) (- n t)))

(declare-fun a_ez () (Set Int))
(assert (subset a_ez UNIVERALSET))
(assert (>= (card a_ez) (- n t)))


(assert (= (card (intersection (intersection (intersection (intersection (intersection b_fc b_fb) a_fa) a_ez) f) (setminus UNIVERALSET f))) 0))

(check-sat)
