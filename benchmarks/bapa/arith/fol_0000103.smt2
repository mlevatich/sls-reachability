(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall b_ei:B. forall a_eh:A. 2b_ei + 2a_eh + |~f| - 4n >= n - t or n - t <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_ei () Int)
(assert (<= b_ei n))
(assert (>= b_ei 0))
(assert (>= (* 2 b_ei) (+ (+ n (* 3 t)) 1)))

(declare-fun a_eh () Int)
(assert (<= a_eh n))
(assert (>= a_eh 0))
(assert (>= a_eh (- n t)))


(assert (and (< (- (+ (+ (* 2 b_ei) (* 2 a_eh)) (card (setminus UNIVERALSET f))) (* 4 n)) (- n t)) (> (- n t) 0)))

(check-sat)
