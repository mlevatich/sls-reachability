(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall a_bw:A. a_bw + |~f| - n >= (n - t + 1) / 2 or (n - t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_bw () Int)
(assert (<= a_bw n))
(assert (>= a_bw 0))
(assert (>= a_bw (- n t)))


(assert (and (< (* 2 (- (+ a_bw (card (setminus UNIVERALSET f))) n)) (+ (- n t) 1)) (> (+ (- n t) 1) (* 2 0))))

(check-sat)
