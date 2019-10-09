(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_et:B. forall b_es:B. forall b_er:B. forall a_eq:A. forall a_ep:A. nonempty(b_et & b_es & b_er & a_eq & a_ep & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_et () (Set Int))
(assert (subset b_et UNIVERALSET))
(assert (>= (* 2 (card b_et)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_es () (Set Int))
(assert (subset b_es UNIVERALSET))
(assert (>= (* 2 (card b_es)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_er () (Set Int))
(assert (subset b_er UNIVERALSET))
(assert (>= (* 2 (card b_er)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_eq () (Set Int))
(assert (subset a_eq UNIVERALSET))
(assert (>= (card a_eq) (- n t)))

(declare-fun a_ep () (Set Int))
(assert (subset a_ep UNIVERALSET))
(assert (>= (card a_ep) (- n t)))


(assert (= (card (intersection (intersection (intersection (intersection (intersection b_et b_es) b_er) a_eq) a_ep) (setminus UNIVERALSET f))) 0))

(check-sat)
