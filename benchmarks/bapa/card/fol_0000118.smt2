(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_hd:A. forall a_hc:A. forall a_hb:A. nonempty(a_hd & a_hc & a_hb & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_hd () (Set Int))
(assert (subset a_hd UNIVERALSET))
(assert (>= (card a_hd) (- n t)))

(declare-fun a_hc () (Set Int))
(assert (subset a_hc UNIVERALSET))
(assert (>= (card a_hc) (- n t)))

(declare-fun a_hb () (Set Int))
(assert (subset a_hb UNIVERALSET))
(assert (>= (card a_hb) (- n t)))


(assert (= (card (intersection (intersection (intersection a_hd a_hc) a_hb) (setminus UNIVERALSET f))) 0))

(check-sat)
