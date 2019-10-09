(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_fs:B. forall b_fr:B. forall a_fq:A. forall a_fp:A. B(b_fs & b_fr & a_fq & a_fp & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_fs () (Set Int))
(assert (subset b_fs UNIVERALSET))
(assert (>= (* 2 (card b_fs)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_fr () (Set Int))
(assert (subset b_fr UNIVERALSET))
(assert (>= (* 2 (card b_fr)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_fq () (Set Int))
(assert (subset a_fq UNIVERALSET))
(assert (>= (card a_fq) (- n t)))

(declare-fun a_fp () (Set Int))
(assert (subset a_fp UNIVERALSET))
(assert (>= (card a_fp) (- n t)))


(assert (not (>= (* 2 (card (intersection (intersection (intersection (intersection b_fs b_fr) a_fq) a_fp) (setminus UNIVERALSET f)))) (+ (+ n (* 3 t)) 1))))

(check-sat)
