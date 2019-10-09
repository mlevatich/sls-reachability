(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_bh:C. forall b_bg:B. c_bh + b_bg + |~f| - 2n >= (n - t + 1) / 2 or (n - t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_bh () Int)
(assert (<= c_bh n))
(assert (>= c_bh 0))
(assert (>= (* 2 c_bh) (+ (- n t) 1)))

(declare-fun b_bg () Int)
(assert (<= b_bg n))
(assert (>= b_bg 0))
(assert (>= (* 2 b_bg) (+ (+ n (* 3 t)) 1)))


(assert (and (< (* 2 (- (+ (+ c_bh b_bg) (card (setminus UNIVERALSET f))) (* 2 n))) (+ (- n t) 1)) (> (+ (- n t) 1) (* 2 0))))

(check-sat)
