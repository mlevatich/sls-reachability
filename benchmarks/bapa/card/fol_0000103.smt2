(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_fk:B. forall b_fj:B. forall a_fi:A. forall a_fh:A. A(b_fk & b_fj & a_fi & a_fh & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_fk () (Set Int))
(assert (subset b_fk UNIVERALSET))
(assert (>= (* 2 (card b_fk)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_fj () (Set Int))
(assert (subset b_fj UNIVERALSET))
(assert (>= (* 2 (card b_fj)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_fi () (Set Int))
(assert (subset a_fi UNIVERALSET))
(assert (>= (card a_fi) (- n t)))

(declare-fun a_fh () (Set Int))
(assert (subset a_fh UNIVERALSET))
(assert (>= (card a_fh) (- n t)))


(assert (not (>= (card (intersection (intersection (intersection (intersection b_fk b_fj) a_fi) a_fh) (setminus UNIVERALSET f))) (- n t))))

(check-sat)
