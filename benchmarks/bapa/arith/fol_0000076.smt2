(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_co:C. forall b_cn:B. c_co + b_cn + |~f| - 2n >= (n + 3t + 1) / 2 or (n + 3t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_co () Int)
(assert (<= c_co n))
(assert (>= c_co 0))
(assert (>= (* 2 c_co) (+ (- n t) 1)))

(declare-fun b_cn () Int)
(assert (<= b_cn n))
(assert (>= b_cn 0))
(assert (>= (* 2 b_cn) (+ (+ n (* 3 t)) 1)))


(assert (and (< (* 2 (- (+ (+ c_co b_cn) (card (setminus UNIVERALSET f))) (* 2 n))) (+ (+ n (* 3 t)) 1)) (> (+ (+ n (* 3 t)) 1) (* 2 0))))

(check-sat)
