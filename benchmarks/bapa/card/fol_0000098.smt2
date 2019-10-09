(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_eo:B. forall b_en:B. forall a_em:A. forall a_el:A. nonempty(b_eo & b_en & a_em & a_el & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_eo () (Set Int))
(assert (subset b_eo UNIVERALSET))
(assert (>= (* 2 (card b_eo)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_en () (Set Int))
(assert (subset b_en UNIVERALSET))
(assert (>= (* 2 (card b_en)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_em () (Set Int))
(assert (subset a_em UNIVERALSET))
(assert (>= (card a_em) (- n t)))

(declare-fun a_el () (Set Int))
(assert (subset a_el UNIVERALSET))
(assert (>= (card a_el) (- n t)))


(assert (= (card (intersection (intersection (intersection (intersection b_eo b_en) a_em) a_el) (setminus UNIVERALSET f))) 0))

(check-sat)
