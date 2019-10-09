(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_dd:C. forall b_dc:B. forall a_db:A. top(c_dd & b_dc & a_db)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_dd () (Set Int))
(assert (subset c_dd UNIVERALSET))
(assert (>= (* 2 (card c_dd)) (+ (- n t) 1)))

(declare-fun b_dc () (Set Int))
(assert (subset b_dc UNIVERALSET))
(assert (>= (* 2 (card b_dc)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_db () (Set Int))
(assert (subset a_db UNIVERALSET))
(assert (>= (card a_db) (- n t)))


(assert (>= (card (setminus UNIVERALSET (intersection (intersection c_dd b_dc) a_db))) 1))

(check-sat)
