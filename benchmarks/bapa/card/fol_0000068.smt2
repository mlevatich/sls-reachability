(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_cd:C. nonempty(c_cd & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_cd () (Set Int))
(assert (subset c_cd UNIVERALSET))
(assert (>= (* 2 (card c_cd)) (+ (- n t) 1)))


(assert (= (card (intersection c_cd (setminus UNIVERALSET f))) 0))

(check-sat)
